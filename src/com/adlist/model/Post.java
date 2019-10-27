package com.adlist.model;

import java.util.ArrayList;
import java.util.Date;

public class Post {

	private String title;
	private String area;
	private String postalCode;
	private String category;
	private String description;
	private String email;
	private String phone;
	private Date postedDate;
	private boolean emailMe;
	private boolean callMe;
	private boolean textMe;
	private ArrayList<Reply> replies;

	public Post() {
	}

	public Post(String title, String neighbourhood, String postalCode, String category, String description,
			String email, String phone, Date postedDate, boolean emailMe, boolean callMe, boolean textMe) {
		this.title = title;
		this.area = neighbourhood;
		this.postalCode = postalCode;
		this.category = category;
		this.description = description;
		this.email = email;
		this.phone = phone;
		this.postedDate = postedDate;
		this.emailMe = emailMe;
		this.callMe = callMe;
		this.textMe = textMe;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getPostalCode() {
		return postalCode;
	}

	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getPostedDate() {
		return postedDate;
	}

	public void setPostedDate(Date postedDate) {
		this.postedDate = postedDate;
	}

	public boolean isEmailMe() {
		return emailMe;
	}

	public void setEmailMe(boolean emailMe) {
		this.emailMe = emailMe;
	}

	public boolean isCallMe() {
		return callMe;
	}

	public void setCallMe(boolean callMe) {
		this.callMe = callMe;
	}

	public boolean isTextMe() {
		return textMe;
	}

	public void setTextMe(boolean textMe) {
		this.textMe = textMe;
	}
	
	public ArrayList<Reply> getReplies() {
		return replies;
	}
	
	public void setReplies(ArrayList<Reply> replies) {
		this.replies = replies;
	}

}
