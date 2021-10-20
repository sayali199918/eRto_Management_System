package com.app.repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.app.pojos.LearningLicense;
import com.app.pojos.User;

@Repository
public interface LearningRepository extends JpaRepository<LearningLicense, Integer> {
	
	LearningLicense findByAadharNo(String aadharNo);
	
	//to find user details using userId
	@Query("from LearningLicense where user = :a")
	public LearningLicense findByUserId(@Param(value = "a") User user);
	
	
	//to find all the applicants having applicants tomorrow
	@Query("SELECT l FROM LearningLicense l where l.appointmentDate = current_date+1")
	public ArrayList<LearningLicense> findAllApplicants();
	
	
	//to find all the applicants having applicants tomorrow at 11
	@Query("SELECT l FROM LearningLicense l where l.appointmentDate = current_date AND l.appointmentTime = '11:00:00'")
	public ArrayList<LearningLicense> findAllApplicantsWithTime11();
	
	
	//to find all the applicants having applicants tomorrow at 1.30
	@Query("SELECT l FROM LearningLicense l where l.appointmentDate = current_date AND l.appointmentTime = '13:30:00'")
	public ArrayList<LearningLicense> findAllApplicantsWithTime130();
	
	
	//to find all the applicants having applicants tomorrow at 3.30
	@Query("SELECT l FROM LearningLicense l where l.appointmentDate = current_date AND l.appointmentTime = '15:30:00'")
	public ArrayList<LearningLicense> findAllApplicantsWithTime330();

}
