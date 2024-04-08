<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Home Page</title>
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

	<div class="container-fluid container-fluid-one d-flex flex-column justify-content-centre align-items-start gap-4 pt-5">
		<h1 style="margin-top:30px;">Welcome to Our Company</h1>
		<p>C Company is a leading provider of innovative solutions in technology. With a focus on software development and IT consulting, we strive to empower businesses with cutting-edge technologies. Our dedicated team is committed to delivering excellence and exceeding expectations.</p>
		<div class="button-container">
			<h6 class="text-uppercase fw-bolder fs-5 pt-1">
				<a href="employees?action=display">Manage Employees</a>
			</h6>
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

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>