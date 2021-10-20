package com.app.service;

import org.springframework.mail.MailException;

public interface IEmailSenderService {
	
	//method for sending mail
	void sendSimpleEmail(String toEmail, String body, String subject) throws MailException, InterruptedException;

}
