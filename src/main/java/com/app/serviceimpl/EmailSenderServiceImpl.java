package com.app.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;

import com.app.service.IEmailSenderService;

@Service
public class EmailSenderServiceImpl implements IEmailSenderService {

	private JavaMailSender mailSender;
	
	@Autowired
	public EmailSenderServiceImpl(JavaMailSender mailSender) {
		this.mailSender = mailSender;
		}
	
	@Async
	@Override
	public void sendSimpleEmail(String toEmail, String body, String subject)
			throws MailException, InterruptedException {
		
//		System.out.println("Sleeping now.. ");
//		Thread.sleep(10000);
		
		SimpleMailMessage message = new SimpleMailMessage();
			message.setFrom("rtoprojectedac2021@gmail.com");
	        message.setTo(toEmail); 
	        message.setText(body);
	        message.setSubject(subject); 
	        mailSender.send(message);
	        System.out.println("Mail send successfully! ");

	}

}
