package com.home.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.employe.servlets.Employe;

@WebServlet("/Home")
public class Home extends HttpServlet {
    private static final long serialVersionUID = 1L;

    Employe employe = new Employe();
    
    private ArrayList<Employe> employees;

    public Home() {
        super();
        this.employees = new ArrayList<>();
        employees.add(new Employe("chaimaa", "chaimaa@gmail.com", "060908776", "informatique", "ingenieure"));
        employees.add(new Employe("inas", "inas@gmail.com", "060908446", "Physique", "technicienne"));
        employees.add(new Employe("alae", "alaa@gmail.com", "060922776", "Chimie", "doctorante"));
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action != null) {
            switch (action) {
            case "display":
            	display(request, response);
                break;
            case "add":
                add(request, response);
                break;
            case "update":
                update(request, response);
                break;
            case "delete":
                delete(request, response);
                break;
            case "search":
                search(request, response);
                break;
            default:
                display(request, response);
                break;
            }
        } else {
            request.setAttribute("employees", employees);
            request.getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);
        }
    }
    
    public Employe getEmployeeByInfo(String name, String email, String phoneNumber, String department, String position) {
        for (Employe employe : employees) {
            if (employe.getName().equals(name) || employe.getEmail().equals(email) || employe.getPhoneNumber().equals(phoneNumber) || employe.getDepartment().equals(department) || employe.getPosition().equals(position)) {
                return employe;
            }
        }
        return null;
    }

    public void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phoneNumber");
        String department = request.getParameter("department");
        String position = request.getParameter("position");

        Employe newEmployee = new Employe(name, email, phoneNumber, department, position);
        employees.add(newEmployee);

        request.setAttribute("employees", employees);
        request.getRequestDispatcher("/WEB-INF/display.jsp").forward(request, response);
    }


    public void display(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("employees", employees);
        request.getRequestDispatcher("/WEB-INF/display.jsp").forward(request, response);
    }

    public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String newEmail = request.getParameter("email");
        String newPhoneNumber = request.getParameter("phoneNumber");
        String newDepartment = request.getParameter("department");
        String newPosition = request.getParameter("position");

        boolean found = false;

        for (Employe employee : employees) {
            if (employee.getName().equalsIgnoreCase(name)) {
                employee.setEmail(newEmail);
                employee.setPhoneNumber(newPhoneNumber);
                employee.setDepartment(newDepartment);
                employee.setPosition(newPosition);
                found = true;
                break;
            }
        }

        if (!found) {
            request.setAttribute("error", "Employé non trouvé");
        } else {
            request.setAttribute("employees", employees);
            request.getRequestDispatcher("/WEB-INF/display.jsp").forward(request, response);
        }
    }

    public void delete(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        boolean isRemoved = employees.removeIf(employee -> employee.getName().equalsIgnoreCase(name));
        if (!isRemoved) {
            request.setAttribute("error", "L'employé n'existe pas");
        }
        request.setAttribute("employees", employees);
        request.getRequestDispatcher("/WEB-INF/display.jsp").forward(request, response);
    }
    
    public void search(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String searchValue = request.getParameter("searchValue");
        ArrayList<Employe> searchResults = new ArrayList<>();

        for (Employe employee : employees) {
            if (employeeMatchesSearch(employee, searchValue)) {
                searchResults.add(employee);
            }
        }

        request.setAttribute("employees", searchResults);
        request.getRequestDispatcher("/WEB-INF/display.jsp").forward(request, response);
    }

    private boolean employeeMatchesSearch(Employe employee, String searchValue) {
        return employee.getName().toLowerCase().contains(searchValue.toLowerCase())
                || employee.getEmail().toLowerCase().contains(searchValue.toLowerCase())
                || employee.getPhoneNumber().toLowerCase().contains(searchValue.toLowerCase())
                || employee.getDepartment().toLowerCase().contains(searchValue.toLowerCase())
                || employee.getPosition().toLowerCase().contains(searchValue.toLowerCase());
    }

}