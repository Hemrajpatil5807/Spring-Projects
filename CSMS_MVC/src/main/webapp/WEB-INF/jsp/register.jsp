<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register | Matoshree Construction</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<style>
        body {
            background: url("<c:url value='/resources/images/construction-bg.jpg'/>") no-repeat center center fixed;
            background-size: cover;
        }
       /*  .container{
            height:0vh;
            
        } */
        .login-container {
            margin-top: 15%;
            max-width: 400px;
            padding: 30px;
            border-radius: 15px;
            background: rgba(0, 0, 0, 0.7);
            color: #fff;
            box-shadow: 0px 0px 20px rgba(0,0,0,0.5);
        }
        .form-control {
            border-radius: 10px;
        }
        .btn-custom {
            border-radius: 10px;
        }
    </style>
</head>
<body>
<%-- <%@ include file="nav/header.jsp" %> --%>

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

<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6 col-lg-4">
            <div class="login-container">
                <h3 class="text-center mb-4">Register</h3>
                    <!-- Success / Error Message -->
                <c:if test="${not empty message}">
                    <div class="alert alert-info mt-2 text-center">
                        ${message}
                    </div>
                </c:if>
                <form action="registerUser" method="post">
                    <div class="mb-3">
                        <label for="name" class="form-label">Name</label>
                        <input type="text" class="form-control" name="name" id="name" required>
                    </div>
                    
                     <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" name="email" id="email" required>
                    </div>
                    
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" name="password" id="password" required>
                    </div>
                    
                      <div class="mb-3">
                        <label class="form-label">Role</label>
                        <select name="role" class="form-select">
                            <option value="ADMIN">Admin</option>
                            <option value="SITE_MANAGER">Site Manager</option>
                            <option value="ACCOUNTANT">Accountant</option>
                        </select>
                    </div>
                    </br>
                    <button type="submit" class="btn btn-warning w-100 btn-custom">Register</button>
                    
                </form>
               
                <div class="text-center mt-3">
                    <small>Already have an account? <a href="loginPage" class="text-warning">Login</a></small>
                </div>
            </div>
        </div>
    </div>
</div>


<%@ include file="nav/footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
