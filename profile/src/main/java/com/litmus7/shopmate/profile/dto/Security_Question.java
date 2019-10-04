package com.litmus7.shopmate.profile.dto;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Security_Question {

	@Id
	private Integer security_Id;

	private String question;

	public Integer getSecurity_Id() {
		return security_Id;
	}

	public void setSecurity_Id(Integer security_Id) {
		this.security_Id = security_Id;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	@Override
	public String toString() {
		return "Security_Question [security_Id=" + security_Id + ", question=" + question + "]";
	}

}
