package com.example.tech9_survey.domain;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Size;

import com.fasterxml.jackson.annotation.JsonProperty;

@Entity
public class Answer extends BaseEntity {
	
	@ManyToOne
	@JoinColumn(name = "question_id", nullable = false)
	@JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
	private Question question;
	
	@Size(max=240)
	private String content;

	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
}
