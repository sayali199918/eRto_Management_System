package com.app.pojos;

import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalTime;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Past;

import org.hibernate.validator.constraints.Length;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

@Entity
@Table(name = "learning")
public class LearningLicense {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE,generator ="app_id" )
	@SequenceGenerator(name="app_id",initialValue=12300)
	private int applicantId;

	@Column(length = 20)
	@NotBlank(message = "Name is required")
	@Length(min = 3, max = 15, message = "Invalid name length")
	private String firstName;

	@Column(length = 20)
	@NotBlank(message = "Name is required")
	@Length(min = 3, max = 15, message = "Invalid name length")
	private String lastName;

	@Column(length = 50)
	@NotBlank(message = "Email is required")
	@Email(message = "Invalid Email Format")
	private String email;

	@Column(length = 20, name = "aadhar_no", unique = true)
	@NotBlank(message = "Aaadhar_no is required")
	@Length(max = 12, message = "Invalid aadhar no length")
	private String aadharNo;

	@Column(length = 20, name = "mobile_no")
	@NotBlank(message = "Mobile_no is required")
	@Length(max = 20, message = "Invalid mobile no length")
	private String mobileNo;

	@Column(name = "dob")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Past
	private LocalDate dob;

	@Column(name = "gender", length = 20)
	private String gender;

	@Column(name = "blood_group", length = 20)
	private String bloodGroup;

	@Column(name = "identification_mark", length = 50)
	@NotBlank(message = "Identification mark is required")
	@Length(min = 1, max = 50, message = "Invalid")
	private String identificationMark;

	@Column(length = 20)
	@NotBlank(message = "State is required")
	@Length(min = 1, max = 25, message = "Invalid State")
	private String state;

	@Column(length = 20)
	@NotBlank(message = "District is required")
	@Length(min = 1, max = 25, message = "Invalid district")
	private String district;

	@Column(length = 20)
	@NotBlank(message = "Village/Town is required")
	@Length(min = 1, max = 25, message = "Invalid village/town")
	private String village;

	@Column(length = 20)
	@NotBlank(message = "Landmark is required")
	@Length(min = 1, max = 25, message = "Invalid landmark")
	private String landmark;

	@Column(length = 20)
	@NotBlank(message = "Pincode is required")
	@Length(min = 1, max = 6, message = "Invalid Pincode")
	private String pincode;

	@Column(length = 50)
	@NotBlank(message = "Street is required")
	@Length(min = 1, max = 50, message = "Invalid Street ")
	private String street;

	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "user_id")
	private User user;

	@Column(name = "created_at")
	private Timestamp createdAt = new Timestamp(System.currentTimeMillis());

	@Column(name = "appointment_date")
	@DateTimeFormat(iso = ISO.DATE)
	private LocalDate appointmentDate;

	@Column(name = "apointment_time")
	@DateTimeFormat(iso = ISO.TIME)
	private LocalTime appointmentTime;

	@Column(name = "appointment_status")
	@Enumerated(EnumType.STRING)
	private LearningStatus learningStatus = LearningStatus.BOOKED;

	@Column(name = "written_test_flag", length = 1)
	private String writtenTestFlag = "N";

	public LearningLicense() {
		System.out.println(getClass().getName());
	}

	public LearningLicense(String firstName, String lastName, String email, String aadharNo, String mobileNo,
			LocalDate dob, String gender, String bloodGroup, String identificationMark, String state, String district,
			String village, String landmark, String pincode, String street, User user, String writtenTestFlag) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.aadharNo = aadharNo;
		this.mobileNo = mobileNo;
		this.dob = dob;
		this.gender = gender;
		this.bloodGroup = bloodGroup;
		this.identificationMark = identificationMark;
		this.state = state;
		this.district = district;
		this.village = village;
		this.landmark = landmark;
		this.pincode = pincode;
		this.street = street;
		this.user = user;
		this.writtenTestFlag = writtenTestFlag;
	}

	public int getApplicantId() {
		return applicantId;
	}

	public void setApplicantId(int applicantId) {
		this.applicantId = applicantId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAadharNo() {
		return aadharNo;
	}

	public void setAadharNo(String aadharNo) {
		this.aadharNo = aadharNo;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public LocalDate getDob() {
		return dob;
	}

	public void setDob(LocalDate dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	public String getIdentificationMark() {
		return identificationMark;
	}

	public void setIdentificationMark(String identificationMark) {
		this.identificationMark = identificationMark;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getVillage() {
		return village;
	}

	public void setVillage(String village) {
		this.village = village;
	}

	public String getLandmark() {
		return landmark;
	}

	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Timestamp getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Timestamp createdAt) {
		this.createdAt = createdAt;
	}

	public LocalDate getAppointmentDate() {
		return appointmentDate;
	}

	public void setAppointmentDate(LocalDate appointmentDate) {
		this.appointmentDate = appointmentDate;
	}

	public LocalTime getAppointmentTime() {
		return appointmentTime;
	}

	public void setAppointmentTime(LocalTime appointmentTime) {
		this.appointmentTime = appointmentTime;
	}

	public LearningStatus getLearningStatus() {
		return learningStatus;
	}

	public void setLearningStatus(LearningStatus learningStatus) {
		this.learningStatus = learningStatus;
	}

	public String getWrittenTestFlag() {
		return writtenTestFlag;
	}

	public void setWrittenTestFlag(String writtenTestFlag) {
		this.writtenTestFlag = writtenTestFlag;
	}

	
}
