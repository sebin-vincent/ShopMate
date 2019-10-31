package com.litmus7.shopmate.profile.dto;



import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;

import org.springframework.boot.autoconfigure.domain.EntityScan;

import com.fasterxml.jackson.annotation.JsonIgnore;
@EntityScan(value = "com.litmus7.shopmate")
@Entity
@Table(name = "profile")
public class UserDto {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "profile_id")
	private int profileId;

	

	@Column(name = "first_name")
	private String firstName;
	
	@Transient
	@Column(name = "last_name")
	private String lastName;
	
	//@Email(message = "enter a valid email")
	@Column(name = "email_id",unique=true)
	private String email;

	@Transient
	@Column(name = "password")
	private String password;
	
	
	@Column(name="registration_date")
	private Date date;
	
	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Column(name = "question_id")
	private String questionId;
	
	
	@Column(name = "security_answer")
	private String answer;
	
	@Column(name = "primary_phone_mumber")
	private Double mobile;

//	@Column(name = "question_id")
//	private String question_id;
//	
//	
	
	public Double getMobile() {
		return mobile;
	}

	public void setMobile(int mobile) {
		this.mobile = (double) mobile;
	}

	public String getQuestionId() {
		return questionId;
	}

	public void setQuestionId(String questionId) {
		this.questionId = questionId;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public int getId() {
		return profileId;
	}

	public void setId(int id) {
		this.profileId = id;
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

	

	public int getProfileId() {
		return profileId;
	}

	public void setProfileId(int profileId) {
		this.profileId = profileId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
