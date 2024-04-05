<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Home Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
        }
        .menu {
            text-align: center;
            margin-top: 20px;
        }
        .menu a {
            text-decoration: none;
            color: #333;
            padding: 10px 20px;
            margin: 0 10px;
            border-radius: 5px;
            background-color: #f0f0f0;
            transition: background-color 0.3s;
        }
        .menu a:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Welcome to Our Library Management System</h1>
        <div class="menu">
           <a href="employees?action=add">Add Employee</a>
           <a href="employees?action=update">Update Employee</a>
           <a href="employees?action=delete">Delete Employee</a>
           <a href="employees?action=display">Display Employees</a>
        </div>
    </div>
</body>
</html>
