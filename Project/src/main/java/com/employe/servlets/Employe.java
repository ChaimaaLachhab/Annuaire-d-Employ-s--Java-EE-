package com.employe.servlets;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet("/Employe")
public class Employe extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String name;
	private String email;
	private String phoneNumber;
	private String department;
	private String position;

	public Employe(String name, String email, String phoneNumber, String department, String position) {
		super();
		this.name = name;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.department = department;
		this.position = position;
	}

	public Employe() {
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
}