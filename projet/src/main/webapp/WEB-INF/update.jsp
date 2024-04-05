<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Employee</title>
</head>
<body>
    <h1>Update Employee</h1>
    <form action="Accueil" method="post">
        <label>Name:</label>
        <input type="text" name="name" value="${employee.name}" readonly><br>
        <label>Email:</label>
        <input type="email" name="email" value="${employee.email}"><br>
        <label>Phone Number:</label>
        <input type="text" name="phoneNumber" value="${employee.phoneNumber}"><br>
        <label>Department:</label>
        <input type="text" name="department" value="${employee.department}"><br>
        <label>Position:</label>
        <input type="text" name="position" value="${employee.position}"><br>
        <input type="hidden" name="action" value="update">
        <input type="submit" value="Update">
    </form>
</body>
</html>