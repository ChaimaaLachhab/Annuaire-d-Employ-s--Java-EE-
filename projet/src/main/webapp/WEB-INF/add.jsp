<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Employee</title>
</head>
<body>
    <h1>Add Employee</h1>
    <form action="Accueil" method="post">
        <label>Name:</label>
        <input type="text" name="name"><br>
        <label>Email:</label>
        <input type="email" name="email"><br>
        <label>Phone Number:</label>
        <input type="text" name="phoneNumber"><br>
        <label>Department:</label>
        <input type="text" name="department"><br>
        <label>Position:</label>
        <input type="text" name="position"><br>
        <input type="submit" value="Add">
    </form>
</body>
</html>