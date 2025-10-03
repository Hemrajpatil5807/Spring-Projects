<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>

<title>Site Manager | Expense</title>
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

<div class="d-flex flex-column p-3 bg-dark text-white vh-100 sidebar" style="min-height: 100vh;">
    <h4 class="text-center mb-4">
        <i class="fa fa-user-helmet"></i> Site Manager
    </h4>

    <ul class="nav nav-pills flex-column mb-auto">
        <!-- Dashboard -->
        <li class="nav-item mb-2">
            <a href="managerdash" class="nav-link text-white">
                <i class="fa fa-gauge-high me-2"></i> Dashboard
            </a>
        </li>

        <!-- Sites Assigned -->
        <li class="nav-item mb-2">
            <a href="managerdash" class="nav-link text-white">
                <i class="fa fa-building me-2"></i> My Sites
            </a>
        </li>

        <!-- Materials Management -->
        <li class="nav-item mb-2">
            <a href="materials" class="nav-link text-white">
                <i class="fa fa-boxes-stacked me-2"></i> Materials
            </a>
        </li>

        <!-- Expenses -->
        <li class="nav-item mb-2">
            <a href="siteexpenses" class="nav-link text-white">
                <i class="fa fa-money-bill-wave me-2"></i> Expenses
            </a>
        </li>

        <!-- Reports -->
        <li class="nav-item mb-2">
            <a href="${pageContext.request.contextPath}/manager/reports"
               class="nav-link text-white ${pageContext.request.requestURI.contains('/reports') ? 'active bg-primary' : ''}">
                <i class="fa fa-chart-pie me-2"></i> Reports
            </a>
        </li>
    </ul>

    <hr class="border-secondary">

    <!-- Logout -->
    <div class="text-center">
        <a href="${pageContext.request.contextPath}/logout" class="btn btn-danger w-100">
            <i class="fa fa-sign-out-alt"></i> Logout
        </a>
    </div>
</div>


</body>
</html>