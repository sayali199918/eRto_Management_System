package com.app.service;

import org.springframework.mail.MailException;

import com.app.pojos.User;

public interface IUserService {
	
	//method to save details of newly registerd user
	public String registerUser(User transientUser) throws MailException, InterruptedException;

}
