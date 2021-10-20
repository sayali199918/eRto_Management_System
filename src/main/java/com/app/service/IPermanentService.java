package com.app.service;

import java.util.Optional;

import org.springframework.mail.MailException;

import com.app.pojos.PermanentLicense;

public interface IPermanentService {

	//for saving PL object
	String applyForPermanent(PermanentLicense pl) throws MailException, InterruptedException;
	
	////for finding PL object associated with the user using userId
	PermanentLicense registerForPermanent(PermanentLicense pl, Integer userId) throws MailException, InterruptedException;

	//method to find PL obj by applicationId
	Optional<PermanentLicense> findById(Integer applicantId);
	
	//method to find PL obj by userId
	PermanentLicense findByUserId(Integer userId);
	
	//method to delete PL obj
	void deletePermanentLicenseById(Integer applicantId);

	//method for updating PL obj
	boolean updateLisence(PermanentLicense pl);
	
}
