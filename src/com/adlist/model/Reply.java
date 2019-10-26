package com.adlist.model;

import java.util.Date;

public class Reply {

	private String email;
	private String text;
	private Date replyDate;

	public Reply() {
	}

	public Reply(String email, String text, Date replyDate) {
		this.email = email;
		this.text = text;
		this.replyDate = replyDate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public Date getReplyDate() {
		return replyDate;
	}

	public void setReplyDate(Date replyDate) {
		this.replyDate = replyDate;
	}

}
