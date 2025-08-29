<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Construction Site Management System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #f8f9fa;
        }
        .hero-section {
            background: url("<c:url value='/resources/images/construction.jpg'/>") no-repeat center center;
            background-size: cover;
            height: 92.5vh;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: white;
        }
        .overlay {
            background-color: rgba(0, 0, 0, 0.4);
            position: absolute;
            top: 56px;
            left: 0;
            right: 0;
            bottom: 0;
        } 
        .hero-content {
            position: relative;
            z-index: 2;
        }
        footer {
            margin-top: 50px;
            background: #343a40;
            color: white;
            padding: 15px;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="index">🏗️ Matoshree Construction.</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" 
                data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" 
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto me-4">
                <li class="nav-item me-2"><a class="nav-link active" href="index">Home</a></li>
                <li class="nav-item me-2"><a class="nav-link" href="loginPage">Sites</a></li>
                <li class="nav-item me-2"><a class="nav-link" href="loginPage">Materials</a></li>
                <li class="nav-item me-2"><a class="nav-link" href="loginPage">Expenses</a></li>
                <li class="nav-item me-2"><a class="nav-link" href="registerPage">Register</a></li>
                <li class="nav-item me-2"><a class="nav-link" href="loginPage">Login</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<div class="hero-section">
    <div class="overlay"></div>
    <div class="hero-content">
        <h1 class="display-4 fw-bold">Construction Site Management System</h1>
        <p class="lead">Manage your sites, track materials, and control expenses seamlessly.</p>
        <a href="loginPage" class="btn btn-warning btn-lg mt-3">Get Started</a>
    </div>
</div>

<!-- Features Section -->
<div class="container mt-5">
    <div class="row text-center">
        <div class="col-md-4">
            <div class="card shadow-sm p-3">
                <h5>📍 Site Management</h5>
                <p>Track all construction sites, assign managers, and monitor progress.</p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card shadow-sm p-3">
                <h5>🧱 Material Tracking</h5>
                <p>Monitor usage of cement, steel, sand, and other raw materials.</p>
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

<!-- Footer -->
<footer class="text-center">
    <p>&copy; 2025 Construction Co. | Developed with Spring MVC & Bootstrap</p>
</footer>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
