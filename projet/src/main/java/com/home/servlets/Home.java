package com.home.servlets;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import com.employe.servlets.Employe;


@WebServlet("/Home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	ArrayList<Employe> employees;

    public Home() {
        super();
        this.employees = new ArrayList<>();
    }
   

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action != null) {
            switch (action) {
                case "add":
                    request.getRequestDispatcher("/WEB-INF/add.jsp").forward(request, response);
                    break;
                case "update":
                    request.getRequestDispatcher("/WEB-INF/update.jsp").forward(request, response);
                    break;
                case "delete":
                    request.getRequestDispatcher("/WEB-INF/delete.jsp").forward(request, response);
                    break;
                case "display":
                    request.getRequestDispatcher("/WEB-INF/display.jsp").forward(request, response);
                    break;
                default:
                    display(request, response);
            }
        } else {
            request.getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
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
        request.getRequestDispatcher("/WEB-INF/add.jsp").forward(request, response);
    }
    
    public void display(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("employees", employees);
        request.getRequestDispatcher("/WEB-INF/display.jsp").forward(request, response);
    }

    public void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        boolean found = false;
        for (Employe employee : employees) {
            if (employee.getName().equalsIgnoreCase(name)) {
                employee.setEmail(request.getParameter("email"));
                employee.setPhoneNumber(request.getParameter("phoneNumber"));
                employee.setDepartment(request.getParameter("department"));
                employee.setPosition(request.getParameter("position"));
                found = true;
                break;
            }
        }
        if (!found) {
            request.setAttribute("error", "Employé non trouvé");
        }
        request.setAttribute("employees", employees);
        request.getRequestDispatcher("/WEB-INF/display.jsp").forward(request, response);
    }

    public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        boolean isRemoved = employees.removeIf(employee -> employee.getName().equalsIgnoreCase(name));
        if (!isRemoved) {
            request.setAttribute("error", "L'employé n'existe pas");
        }
        request.setAttribute("employees", employees);
        request.getRequestDispatcher("/WEB-INF/display.jsp").forward(request, response);
    }
}