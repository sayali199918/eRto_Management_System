package com.app.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.app.pojos.LearningLicense;
import com.app.pojos.LearningStatus;
import com.app.pojos.PermanentLicense;
import com.app.pojos.User;
import com.app.service.ILearningService;
import com.app.service.IPermanentService;

@Controller
@RequestMapping("/license")
public class LicenseController {

	// dependency : learning service layer i/f
	@Autowired
	private ILearningService learningService;

	// dependency : permanent service layer i/f
	@Autowired
	private IPermanentService permanentService;

	// default constr
	public LicenseController() {
		System.out.println(getClass().getName());
	}

	// Get method for showing learning form
	@GetMapping("/learning")
	public ModelAndView showLearningForm(Model modelMap, LearningLicense ll, HttpSession hs) {
		int userId = (int) hs.getAttribute("userId");
		try {
			ll = learningService.findByUserId(userId);
			if (ll.getAppointmentDate() == null) {
//				modelMap.addAttribute("luser_details", ll);
				return new ModelAndView("/license/learningForm");
			}
		} catch (NullPointerException e) {
			System.err.println("Null");
//			modelMap.addAttribute("luser_details", ll);
			return new ModelAndView("/license/learningForm");
		}

		modelMap.addAttribute("message",
				"You have already submitted the Learning License form!! Kindly check the status.");
		return new ModelAndView("/error");
	}

	// Post method for getting details of learning form
	@PostMapping("/learning")
	public ModelAndView fillLearningForm(@Valid LearningLicense ll, BindingResult res, RedirectAttributes flashMap,
			Model modelMap, HttpSession hs) throws MailException, InterruptedException {

		modelMap.addAttribute(hs.getAttribute("user_details"));
		int userId = (int) hs.getAttribute("userId");
		ll.setUser((User) hs.getAttribute("user_details"));
		System.out.println(ll);
		LearningLicense applicant = learningService.registerForLearning(ll, userId);
		hs.setAttribute("applicantId", applicant.getApplicantId());
		return new ModelAndView("redirect:/upload/upload-files");
	}

	// Get method for showing permanent form
	@GetMapping("/permanent")
	public ModelAndView showPermanentForm(PermanentLicense pl, Model modelMap, HttpSession hs) {
		int userId = (int) hs.getAttribute("userId");
		System.out.println(userId);
		LearningLicense ll = learningService.findByUserId(userId);
		pl = permanentService.findByUserId(userId);
		if (pl != null && pl.getAppointmentDate() != null) {
			modelMap.addAttribute("message",
					"You have already submitted the Permanent License form!! Kindly check the status.");
			return new ModelAndView("/error");
		}

		if (ll == null) {
			modelMap.addAttribute("message", "Please apply for Learning license first!");
			return new ModelAndView("/error");
		}

		if (ll.getLearningStatus() == LearningStatus.COMPLETED) {
			modelMap.addAttribute("puser_details", learningService.findByUserId(userId));
			System.out.println("in permanent form ");
			return new ModelAndView("/license/permanentForm");
		} else {
			modelMap.addAttribute("message", "Please wait for Learning License completion first!");
			return new ModelAndView("/error");
		}
	}

	// Post method for getting details of permanent form
	@PostMapping("/permanent")
	public ModelAndView fillPermanentForm(@Valid PermanentLicense permanentLicense, BindingResult res,
			RedirectAttributes flashMap, Model modelMap, HttpSession hs) throws MailException, InterruptedException {

		if (res.hasErrors()) {
			return new ModelAndView("/license/permanentForm");
		}

		int userId = (int) hs.getAttribute("userId");
		permanentLicense.setUser((User) hs.getAttribute("puser_details"));
		LearningLicense ll = learningService.findByUserId(userId);

		if (ll.getLearningStatus() == LearningStatus.COMPLETED) {
			PermanentLicense applicant = permanentService.registerForPermanent(permanentLicense, userId);
			ll.setLearningStatus(LearningStatus.APPLIEDFORPERMANENT);
			learningService.updateLicense(ll);
			hs.setAttribute("applicantId", applicant.getApplicantId());
			return new ModelAndView("/license/documents");
		} else {
			modelMap.addAttribute("message", "Please wait for Learning License completion first!");
			return new ModelAndView("/error");
		}

	}

}
