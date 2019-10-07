package com.litmus7.shopmate.profile.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "security_question")
public class Security_Question {

	@Id
	@Column(name = "question_id")
	private Integer question_Id;

	@Column(name = "question")
	private String question;

	public Integer getQuestion_Id() {
		return question_Id;
	}

	public void setQuestion_Id(Integer question_Id) {
		this.question_Id = question_Id;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}
}
