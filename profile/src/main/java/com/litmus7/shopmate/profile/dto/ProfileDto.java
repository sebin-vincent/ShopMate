package com.litmus7.shopmate.profile.dto;
import java.util.Date;
import java.util.Map;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.boot.autoconfigure.domain.EntityScan;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@EntityScan(value = "com.litmus7.shopmate")
@Entity
@Table(name = "profile")
@JsonIgnoreProperties(ignoreUnknown = true)
public class ProfileDto {

	public ProfileDto() {
		// TODO Auto-generated constructor stub
	}

	@Id
	@Column(name = "profile_id")
	private String profileId;

	@Column(name = "auto_login")
	private int auto_Login;

	@Column(name = "last_activity_date")
	private Date last_Activity_Date;

	@Column(name = "registration_date")
	private Date registration_Date;

	@Column(name = "email_id ")
	private String email_Id;

	@Column(name = "gender")
	private String gender;

	@Column(name = "date_of_birth")
	private Date date_Of_Birth;

	@Column(name = "first_name")
	private String name;

	@Column(name = "primary_phone_mumber")
	private String phone_Number;

	@Column(name = "question_id")
	private String question_Id;

	@Column(name = "security_answer")
	private String security_Answer;

	@Transient
	private Map<String, Object> extra;

	public Map<String, Object> getExtra() {
		return extra;
	}

	public void setExtra(Map<String, Object> extra) {
		this.extra = extra;
	}
	public String getProfileId() {
		return profileId;
	}

	public void setProfileId(String profileId) {
		this.profileId = profileId;
	}

	public int getAuto_Login() {
		return auto_Login;
	}

	public void setAuto_Login(int auto_Login) {
		this.auto_Login = auto_Login;
	}

	public Date getLast_Activity_Date() {
		return last_Activity_Date;
	}

	public void setLast_Activity_Date(Date last_Activity_Date) {
		this.last_Activity_Date = last_Activity_Date;
	}

	public Date getRegistration_Date() {
		return registration_Date;
	}

	public void setRegistration_Date(Date registration_Date) {
		this.registration_Date = registration_Date;
	}

	public String getEmail_Id() {
		return email_Id;
	}

	public void setEmail_Id(String email_Id) {
		this.email_Id = email_Id;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDate_Of_Birth() {
		return date_Of_Birth;
	}

	public void setDate_Of_Birth(Date date_Of_Birth) {
		this.date_Of_Birth = date_Of_Birth;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone_Number() {
		return phone_Number;
	}

	public void setPhone_Number(String phone_Number) {
		this.phone_Number = phone_Number;
	}

	public String getQuestion_Id() {
		return question_Id;
	}

	public void setQuestion_Id(String question_Id) {
		this.question_Id = question_Id;
	}

	public String getSecurity_Answer() {
		return security_Answer;
	}

	public void setSecurity_Answer(String security_Answer) {
		this.security_Answer = security_Answer;
	}

}
