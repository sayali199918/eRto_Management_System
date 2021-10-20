package com.app.repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.app.pojos.PermanentLicense;
import com.app.pojos.User;

public interface PermanentRepository extends JpaRepository<PermanentLicense, Integer> {

	//returns PL obj by searching with aadhar no
	public PermanentLicense findByAadharNo(String aadharNo);
	
	@Query(" from PermanentLicense where user = :a")
	public PermanentLicense findByUserId(@Param(value = "a") User user);
	
	@Query("SELECT p FROM PermanentLicense p WHERE p.appointmentDate = current_date +1")
	public ArrayList<PermanentLicense> findAllApplicants();
	
}
