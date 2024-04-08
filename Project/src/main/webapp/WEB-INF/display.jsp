<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.employe.servlets.Employe"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Employee List</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome CSS -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
	rel="stylesheet">
<!-- CSS -->
<style><%@include file="/CSS/style.css"%></style>

</head>
<body>
	<header>
		<div class="logo">
			<img src="https://cdn.pixabay.com/photo/2020/09/26/08/36/logo-5603463_1280.png" alt="Company Logo" width="70px">
			<h4>Company</h4>
		</div>
		<nav>
			<ul class="navbar-nav mb-0 d-flex">
				<li class="nav-item"><a class="nav-link" href="/Home"><i
						class="fas fa-home me-2"></i>Home</a></li>
				<li class="nav-item"><a class="nav-link"
					href="employees?action=display"><i class="fas fa-users me-2"></i>View
						Employees</a></li>
				<li class="nav-item"><a class="nav-link"
					onclick="showAddForm()"><i class="fas fa-user-plus me-2"></i>Add
						Employee</a></li>
			</ul>
		</nav>
		<div class="search-container">
			<form action="Home" method="get">
				<input type="hidden" name="action" value="search"> 
				<input type="text" name="searchValue" placeholder="Search...">
				<button class="btn-search" type="submit">
					<i class="fas fa-search me-2 tw-4"></i>
				</button>
			</form>
		</div>
	</header>

	<div
		class="container-fluid container-fluid-two d-flex flex-column justify-content-centre align-items-center gap-4">
		<h1>Employee List</h1>
		<table>

				<tr>
					<th>Name</th>
					<th>Email</th>
					<th>Phone Number</th>
					<th>Department</th>
					<th>Position</th>
					<th>Actions</th>
				</tr>


				<%
				ArrayList<Employe> employees = (ArrayList<Employe>) request.getAttribute("employees");
				if (employees != null && !employees.isEmpty()) {
					for (Employe employee : employees) {
				%>
				<tr>
					<td><%=employee.getName()%></td>
					<td><%=employee.getEmail()%></td>
					<td><%=employee.getPhoneNumber()%></td>
					<td><%=employee.getDepartment()%></td>
					<td><%=employee.getPosition()%></td>
					<td class="button-containerr">
						<form action="Home" method="post">
							<input type="hidden" name="name" value="<%=employee.getName()%>">
							<input type="hidden" name="action" value="delete">
							<div class="btn-delete">
								<i class="fas fa-user-slash mr-3"></i> <input
									class="btn btn-line" type="submit" value="Delete">
							</div>
						</form>
						<div class="btn-update">
							<i class="fas fa-user-edit mr-3"></i>
							<button class="btn btn-line"
								onclick="showUpdateForm('<%=employee.getName()%>')">Update</button>
						</div>
					</td>
				</tr>
				<%
				}
				} else {
				%>
				<tr>
					<td colspan="6">No employees found</td>
				</tr>
				<%
				}
				%>
		</table>

		<div class="btn-add" id="btn-add">
			<i class="fas fa-user-plus me-2"></i>
			<button class="btn btn-line" onclick="showAddForm()">Add
				Employee</button>
		</div>

		<div class="form-container" id="addEmployeeForm"
			style="display: none;">
			<h2>Add Employee</h2>
			<form action="Home" method="post">
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
				<input type="hidden" name="action" value="add"> 
				<input class="btn-save" type="submit" value="Save">
			</form>
		</div>

		<div class="form-container" id="updateEmployeeForm" style="display: none;">
			<h2>Update Employee</h2>
			<form action="Home" method="post">
				<input type="hidden" name="name" id="updateName"> 
				<label>Email:</label>
				<input type="text" name="email" id="updateEmail"><br> 
				<label>Phone Number:</label> 
				<input type="text" name="phoneNumber" id="updatePhoneNumber"><br> 
				<label>Department:</label>
				<input type="text" name="department" id="updateDepartment"><br>
				<label>Position:</label> 
				<input type="text" name="position" id="updatePosition"><br> 
				<input type="hidden" name="action" value="update"> 
				<input class="btn-save" type="submit" value="Save">
			</form>
		</div>
	</div>

	<footer>
		<section class="p-1">
			<div class="d-flex gap-5 align-items-center">
				<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
					<h6 class="text-uppercase  fw-bold fs-5">
						<img src="https://cdn.pixabay.com/photo/2020/09/26/08/36/logo-5603463_1280.png"
							width="70px" alt="logo" />
							Company
					</h6>

				</div>
				<div class="col-md-4 col-lg-4 text-center text-md-centre">
					<div class="p-2">
						&copy; 2024 Copyright: <a class="text-white" href="/Home">C
							Company.</a> All Rights Reserved.
					</div>
				</div>
				<div class="col-md-3 col-lg-3 ml-lg-3 text-center text-md-centre">
					<a class="btn btn-outline-light btn-floating m-1" href="#"
						role="button"><i class="fab fa-facebook-f"></i></a> <a
						class="btn btn-outline-light btn-floating m-1" href="#"
						role="button"><i class="fab fa-twitter"></i></a> <a
						class="btn btn-outline-light btn-floating m-1" href="#"
						role="button"><i class="fab fa-google"></i></a> <a
						class="btn btn-outline-light btn-floating m-1" href="#"
						role="button"><i class="fab fa-instagram"></i></a>
				</div>
			</div>
		</section>
	</footer>

	<script>
		function showUpdateForm(name) {
			document.getElementById("updateName").value = name;
			document.getElementById("updateEmployeeForm").style.display = "block";
			document.getElementById("addEmployeeForm").style.display = "none";
			document.getElementById("btn-add").style.display = "none";
		}

		function showAddForm() {
			document.getElementById("addEmployeeForm").style.display = "block";
			document.getElementById("btn-add").style.display = "none";
		}
	</script>
	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>