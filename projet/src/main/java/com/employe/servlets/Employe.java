package com.employe.servlets;

import java.util.Scanner;
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
    
    public Employe() {}
    

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


	public void displayDetails() {
        System.out.println("Nom: " + name);
        System.out.println("Email: " + email);
        System.out.println("Numéro de téléphone: " + phoneNumber);
        System.out.println("Département: " + department);
        System.out.println("Poste: " + position);
        System.out.println();
    }
	
	public void updateEmployeInfo() {
        Scanner scanner = new Scanner(System.in);
		System.out.println("Entrez les nouvelles informations : ");
        System.out.print("Nouveau nom : ");
        this.name = scanner.nextLine();
        System.out.print("Nouvel email : ");
        this.email = scanner.nextLine();
        System.out.print("Nouveau numéro de téléphone : ");
        this.phoneNumber = scanner.nextLine();
        System.out.print("Nouveau département : ");
        this.department = scanner.nextLine();
        System.out.print("Nouveau poste : ");
        this.position = scanner.nextLine();
		
	}
	
}
