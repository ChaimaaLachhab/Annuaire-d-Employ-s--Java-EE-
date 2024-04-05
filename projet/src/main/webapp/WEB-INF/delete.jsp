<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Delete Employee</title>
</head>
<body>
    <h1>Delete Employee</h1>
    <form action="Accueil" method="post">
        <label>Name of employee to delete:</label>
        <input type="text" name="name"><br>
        <input type="hidden" name="action" value="delete">
        <input type="submit" value="Delete">
    </form>
</body>
</html>