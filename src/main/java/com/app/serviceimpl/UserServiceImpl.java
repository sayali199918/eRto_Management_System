package com.app.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.pojos.Role;
import com.app.pojos.User;
import com.app.repository.UserRepository;
import com.app.service.IEmailSenderService;
import com.app.service.IUserService;

@Service(value = "userService")
@Transactional
public class UserServiceImpl implements IUserService {

	@Autowired
	private UserRepository userRepo;
	
	@Autowired
	private IEmailSenderService emailSenderService;
	
	@Override
	public String registerUser(User transientUser) throws MailException, InterruptedException {
		String email = transientUser.getEmail().toString();
		User newUser = userRepo.findByEmail(email);
		if(newUser != null) {
			return "Email already Registered!!!";
		}
		System.out.println(transientUser);
		transientUser.setRole(Role.CITIZEN);
		if (userRepo.save(transientUser) != null) {
			emailSenderService.sendSimpleEmail(transientUser.getEmail(), "Dear "+ transientUser.getFirstName()+" "+transientUser.getLastName() + ",\n"
							+ "Congratulations! You have successfully registered on the eRTO Portal.\n"
							+"\n" 
							+ "Warm Regards,\n" + "eRTO Group,\n" + "CDAC Mumbai Services", "eRTO Registration");
			return "Registered Successfully!!";
		}
		emailSenderService.sendSimpleEmail(transientUser.getEmail(), "Registration Failed!! Try Again!!", "eRTO Registration Failed!!");
		return "Not Registered!!";
	}

}
