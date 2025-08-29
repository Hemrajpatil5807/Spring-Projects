<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin Dashboard - Construction Management</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<style>
body {
	background-color: #f8f9fa;
}

.sidebar {
	min-height: 100vh;
	background: #343a40;
	color: #fff;
}

.sidebar a {
	color: #ddd;
	text-decoration: none;
	display: block;
	padding: 12px;
	transition: 0.3s;
}

.sidebar a:hover {
	background: #495057;
	color: #fff;
}

.sidebar .active {
	background: #007bff;
	color: #fff;
}

.content {
	padding: 20px;
}
</style>
</head>
<body>

	<div class="container-fluid">
		<div class="row">
			<!-- Sidebar -->
			<nav class="col-md-2 d-none d-md-block sidebar">
				<div class="position-sticky pt-3">
					<a href="admindash"><h4 class="text-center py-3">Admin Panel</h4></a>
					<a href="${pageContext.request.contextPath}/admin/sites">
					   <i class="fa-solid fa-building"></i> Manage Sites</a>
				    <a href="${pageContext.request.contextPath}/admin/materials">
						<i class="fa-solid fa-cubes"></i> Manage Materials</a> 
					<a href="${pageContext.request.contextPath}/admin/suppliers">
					 <i class="fa-solid fa-truck"></i> Manage Suppliers</a>
					<a href="${pageContext.request.contextPath}/admin/material-usage">
					  <i class="fa-solid fa-warehouse"></i> Material Usage</a> 
					<a href="${pageContext.request.contextPath}/admin/expenses">
					  <i class="fa-solid fa-coins"></i> Expenses</a> 
					<a href="manageusers">
					  <i class="fa-solid fa-users"></i> Manage Users</a> 
					<a href="${pageContext.request.contextPath}/admin/reports">
					  <i class="fa-solid fa-chart-line"></i> Reports</a>
				    <a href="index" class="text-danger">
					  <i class="fa-solid fa-right-from-bracket"></i>Logout</a>
				</div>
			</nav>

			<!-- Main Content -->
			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 content">
				<div
					class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
					<h4> Welcome, <c:out value="${sessionScope.username}" /> 👷 </h4>
					<h2> <a class="navbar-brand" href="admindash">🏗️ Matoshree Construction.</a> </h2>
				</div>

				<!-- Dashboard Cards -->
				<div class="row">
					<div class="col-md-3">
						<div class="card shadow-sm">
							<div class="card-body text-center">
								<i class="fa-solid fa-building fa-2x text-primary"></i>
								<h5 class="card-title mt-2">Total Sites</h5>
								<h3>
									<c:out value="${siteCount}" />
								</h3>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="card shadow-sm">
							<div class="card-body text-center">
								<i class="fa-solid fa-cubes fa-2x text-success"></i>
								<h5 class="card-title mt-2">Total Materials</h5>
								<h3>
									<c:out value="${materialCount}" />
								</h3>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="card shadow-sm">
							<div class="card-body text-center">
								<i class="fa-solid fa-coins fa-2x text-warning"></i>
								<h5 class="card-title mt-2">Total Expenses</h5>
								<h5>
									₹
									<c:out value="${expenseTotal}" />
									</h3>
							</div>
						</div>
					</div>
					<div class="col-md-3">
						<div class="card shadow-sm">
							<div class="card-body text-center">
								<i class="fa-solid fa-users fa-2x text-info"></i>
								<h5 class="card-title mt-2">Users</h5>
								<h3>
									<c:out value="${userCount}" />
								</h3>
							</div>
						</div>
					</div>
				</div>

				<!-- Quick Actions -->
				<div class="mt-4">
					<h4>Quick Actions</h4>
					<div class="d-flex gap-3 flex-wrap">
						<a href="${pageContext.request.contextPath}/admin/sites/add" class="btn btn-primary"> 
						   <i class="fa-solid fa-plus"></i> Add Site </a> 
						<a href="${pageContext.request.contextPath}/admin/materials/add" class="btn btn-success"> 
						     <i class="fa-solid fa-plus"></i> Add Material </a> 
					   <a href="${pageContext.request.contextPath}/admin/expenses/add" class="btn btn-warning text-white">
						  <i class="fa-solid fa-plus"></i> Add Expense </a>
					   <a href="adduser" class="btn btn-info text-white">
					      <i class="fa-solid fa-user-plus"></i> Add User </a>
					</div>
				</div>

				<!-- Features Section -->
				<div class="container mt-5">
					<div class="row text-center">
						<div class="col-md-4">
							<div class="card shadow-sm p-3">
								<h5>📍 Site Management</h5>
								<p>Track all construction sites, assign managers, and
									monitor progress.</p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card shadow-sm p-3">
								<h5>🧱 Material Tracking</h5>
								<p>Monitor usage of cement, steel, sand, and other raw
									materials.</p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card shadow-sm p-3">
								<h5>💰 Expense Control</h5>
								<p>Record labor, transport, and equipment expenses for each site.</p>
							</div>
						</div>
					</div>
				</div>

			</main>
		</div>
	</div>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
