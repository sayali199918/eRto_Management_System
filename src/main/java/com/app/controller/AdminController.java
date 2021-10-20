package com.app.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.app.pojos.LearningLicense;
import com.app.pojos.LearningStatus;
import com.app.pojos.PermanentLicense;
import com.app.pojos.PermanentStatus;
import com.app.repository.LearningRepository;
import com.app.repository.PermanentRepository;
import com.app.service.IEmailSenderService;
import com.app.service.ILearningService;
import com.app.service.IPermanentService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	// dependency : learning repository
	@Autowired
	private LearningRepository learningRepo;

	// dependency : permanent repository
	@Autowired
	private PermanentRepository permanentRepo;

	// dependency : service layer i/f
	@Autowired
	private ILearningService learningService;

	// dependency : service layer i/f
	@Autowired
	private IPermanentService permanentService;

	// dependency : email service layer i/f
	@Autowired
	private IEmailSenderService emailSenderService;

	// default constr
	public AdminController() {
		System.out.println(getClass().getName());
	}

	// Get method for showing learning list
	@GetMapping("/ladmin")
	public ModelAndView showLearningList(Model map, Authentication auth) {

		if (auth.getAuthorities().toString().equalsIgnoreCase("[ADMIN]")) {
			map.addAttribute("learning_list", learningRepo.findAll());
			return new ModelAndView("/admin/ladmin");
		}
		return new ModelAndView("redirect:/user/login");
	}

	// Get method for showing LL status edit page
	@GetMapping("/ledit")
	public ModelAndView showEditLearningTable(@RequestParam int vid, Model map, HttpServletRequest request) {
		map.addAttribute("user_details", learningService.findById(vid));
		return new ModelAndView("/admin/ledit");
	}

	// Post method for editing the LL status
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@PostMapping("/ledit")
	public ModelAndView editLearningTable(@RequestParam MultiValueMap map, HttpServletRequest request, HttpSession hs)
			throws MailException, InterruptedException {
		String s;
		s = map.getFirst("vid").toString();
		int id = Integer.parseInt(s);
		s = map.getFirst("learningStatus").toString();
		LearningStatus status = LearningStatus.valueOf(s);
		LearningLicense ll = learningService.findById(id).get();
		ll.setLearningStatus(status);
		if (status == LearningStatus.WRITTENTESTPASSED || status == LearningStatus.COMPLETED) {
			ll.setWrittenTestFlag("Y");
		}

		learningService.updateLicense(ll);

		// checks whether written test slot is issued or not
		if (ll.getLearningStatus() == LearningStatus.WRITTENSLOTISSUED) {
			// if issued then sends the mail to the applicant
			emailSenderService.sendSimpleEmail(ll.getEmail(),
					"Dear " + ll.getFirstName() + " " + ll.getLastName() + ",\n\n"
							+ "Your Learning License Test will be held on " + ll.getAppointmentDate() + " at "
							+ ll.getAppointmentTime() + "\n" + "Wish you the Best of Luck for the test process.\n"
							+ "In case you have any query, you can connect us at rtoprojectedac2021@gmail.com\n" + "\n"
							+ "\n" + "Warm Regards,\n" + "eRTO Group,\n" + "CDAC Mumbai Services",
					"eRTO Learning Test");
		}

		// checks whether written test passed/Completed or not
		if (ll.getLearningStatus() == LearningStatus.WRITTENTESTPASSED
				|| ll.getLearningStatus() == LearningStatus.COMPLETED) {
			// if passed then sends the mail to the applicant
			emailSenderService.sendSimpleEmail(ll.getEmail(), "Dear " + ll.getFirstName() + " " + ll.getLastName()
					+ ",\n\n" + "Congratulations, You have successfully cleared the Written Exam For License.\n"
					+ "Learning License is valid for next 6 months only. So, apply for permanent license within the due date.\n"
					+ "\n" + "Warm Regards,\n" + "eRTO Group,\n" + "CDAC Mumbai Services\n" + "Love from JALGAON❤️",
					"eRTO Learning Test");
		}

		// checks whether written test failed or not
		if (ll.getLearningStatus() == LearningStatus.WRITTENTESTFAILED) {
			// if failed then sends the mail to the applicant
			emailSenderService.sendSimpleEmail(ll.getEmail(),
					"Dear " + ll.getFirstName() + " " + ll.getLastName() + ",\n\n"
							+ "We are Sorry, but you just failed the Written Exam for License\n"
							+ "Your application form is cancelled. Please apply again.\n" + "\n" + "Warm Regards,\n"
							+ "eRTO Group,\n" + "CDAC Mumbai Services",
					"eRTO Learning Test");
		}

		// checks whether applicant is rejected or not
		if (ll.getLearningStatus() == LearningStatus.REJECTED) {
			// if rejected then sends the mail to the applicant
			emailSenderService.sendSimpleEmail(ll.getEmail(), "Dear " + ll.getFirstName() + " " + ll.getLastName()
					+ ",\n\n"
					+ "Your learner license application form is rejected, Please fill the form again carefully.\n"
					+ "Warm Regards,\n" + "eRTO Group,\n" + "CDAC Mumbai Services", "eRTO Driving Test");
		}

		return new ModelAndView("redirect:/admin/ladmin");
	}

	// Get method for deleting the LL applicant
	@GetMapping("/ldelete")
	public String deleteLearningtable(@RequestParam int vid) {
		learningService.deleteLearningLicenseById(vid);
		return "redirect:/admin/ladmin";
	}

	// Get method for showing permanent list
	@GetMapping("/padmin")
	public ModelAndView showPermanentList(Model map, Authentication auth) {
		if (auth.getAuthorities().toString().equalsIgnoreCase("[ADMIN]")) {
			map.addAttribute("permanent_list", permanentRepo.findAll());
			return new ModelAndView("/admin/padmin");
		}
		return new ModelAndView("redirect:/user/login");
	}

	// Get method for showing PL status edit page
	@GetMapping("/pedit")
	public ModelAndView ShowEditPermanentTable(@RequestParam int vid, Model map, HttpServletRequest request) {
		map.addAttribute("permanent_user_details", permanentService.findById(vid));
		return new ModelAndView("/admin/pedit");
	}

	// Post method for editing the PL applicant STATUS
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@PostMapping("/pedit")
	public ModelAndView editPermanentTable(@RequestParam MultiValueMap map, HttpServletRequest request, HttpSession hs)
			throws MailException, InterruptedException {
		String s;

		s = map.getFirst("vid").toString();
		int id = Integer.parseInt(s);

		s = map.getFirst("permanentStatus").toString();
		PermanentStatus status = PermanentStatus.valueOf(s);

		PermanentLicense permanentLicense = permanentService.findById(id).get();
		permanentLicense.setPermanentStatus(status);

		if (status == PermanentStatus.DRIVINGPASS || status == PermanentStatus.COMPLETED) {
			permanentLicense.setWrittenTestFlag("Y");
		}

		permanentService.updateLisence(permanentLicense);

		// checks whether driving test slot is issued or not
		if (permanentLicense.getPermanentStatus() == PermanentStatus.DRIVINGSLOTISSUED) {
			// if issued then sends the mail to the applicant
			if(permanentLicense.getDistrict().equalsIgnoreCase("JALGAON")) {
			emailSenderService.sendSimpleEmail(permanentLicense.getEmail(),
					"Dear " + permanentLicense.getFirstName() + " " + permanentLicense.getLastName() + ",\n\n"
							+ "Your Driving License Test will be held on " + permanentLicense.getAppointmentDate()
							+ " at " + permanentLicense.getAppointmentTime() + "\n"
							+ "Test Centre : MH-19, RTO Office Jalgaon\n"
							+ "Plot No 7, Mahabal Colony Rd, near SP Chowk, Adarsh Nagar, Ganapati Nagar, Jalgaon,\n\n"
							+ "Wish you the Best of Luck for the test process.\n"
							+ "In case you have any query, you can connect us at rtoprojectedac2021@gmail.com\n" + "\n"
							+ "Warm Regards,\n" + "eRTO Group,\n" + "CDAC Mumbai Services",
					"eRTO Driving Test");
			}
			
			if(permanentLicense.getDistrict().equalsIgnoreCase("MUMBAI")) {
				emailSenderService.sendSimpleEmail(permanentLicense.getEmail(),
						"Dear " + permanentLicense.getFirstName() + " " + permanentLicense.getLastName() + ",\n\n"
								+ "Your Driving License Test will be held on " + permanentLicense.getAppointmentDate()
								+ " at " + permanentLicense.getAppointmentTime() + "\n"
								+ "Test Centre : MH-43, RTO Office Navi Mumbai\n"
								+ "Sector 19B, Kopri, B-63, Groma Marg, APMC Market 2, APMC Market, Sector 26, Vashi, Navi Mumbai,\n\n"
								+ "Wish you the Best of Luck for the test process.\n"
								+ "In case you have any query, you can connect us at rtoprojectedac2021@gmail.com\n" + "\n"
								+ "Warm Regards,\n" + "eRTO Group,\n" + "CDAC Mumbai Services",
						"eRTO Driving Test");
				}

		}

		// checks whether driving test passed or not
		if (permanentLicense.getPermanentStatus() == PermanentStatus.DRIVINGPASS) {
			// if passed then sends the mail to the applicant
			emailSenderService.sendSimpleEmail(permanentLicense.getEmail(),
					"Dear " + permanentLicense.getFirstName() + " " + permanentLicense.getLastName() + ",\n\n"
							+ "Congratulations, You have successfully passed the Driving Test For License.\n"
							+ "In case you have any query, you can connect us at rtoprojectedac2021@gmail.com\n" + "\n"
							+ "Warm Regards,\n" + "eRTO Group,\n" + "CDAC Mumbai Services",
					"eRTO Driving Test");

		}

		// checks whether status is completed or not
		if (permanentLicense.getPermanentStatus() == PermanentStatus.COMPLETED) {
			// if completed then sends the mail to the applicant
			emailSenderService.sendSimpleEmail(permanentLicense.getEmail(),
					"Dear " + permanentLicense.getFirstName() + " " + permanentLicense.getLastName() + ",\n\n"
							+ "Your Permanent Driving License is out for delievery, and will reach you in some days.\n"
							+ "Track Your License from here: google.com"
							+ "In case you have any query, you can connect us at rtoprojectedac2021@gmail.com\n" + "\n"
							+ "Warm Regards,\n" + "eRTO Group,\n" + "CDAC Mumbai Services",
					"eRTO Permanent Driving License");

		}

		// checks whether driving test failed or not
		if (permanentLicense.getPermanentStatus() == PermanentStatus.DRIVINGFAIL) {
			// if failed then sends the mail to the applicant
			emailSenderService.sendSimpleEmail(permanentLicense.getEmail(), "Dear " + permanentLicense.getFirstName()
					+ " " + permanentLicense.getLastName() + ",\n\n"
					+ "We are Sorry, but you just failed the Written Exam for License\n"
					+ "Your permanent license application form is cancelled,Please fill again to apply for re-test.\n"
					+ "Warm Regards,\n" + "eRTO Group,\n" + "CDAC Mumbai Services", "eRTO Driving Test");

		}

		// checks whether applicant is rejected or not
		if (permanentLicense.getPermanentStatus() == PermanentStatus.REJECTED) {
			// if rejected then sends the mail to the applicant
			emailSenderService.sendSimpleEmail(permanentLicense.getEmail(), "Dear " + permanentLicense.getFirstName()
					+ " " + permanentLicense.getLastName() + ",\n\n"
					+ "Your permanent license application form is cancelled,Please fill the form again carefully.\n"
					+ "Warm Regards,\n" + "eRTO Group,\n" + "CDAC Services", "eRTO Driving Test");
		}
		return new ModelAndView("redirect:/admin/padmin");
	}

	// Get method for deleting the PL applicant
	@GetMapping("/pdelete")
	public String deletePermanenttable(@RequestParam int vid) {

		permanentService.deletePermanentLicenseById(vid);

		return "redirect:/admin/padmin";
	}
}
