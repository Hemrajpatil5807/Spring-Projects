<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login - Construction Management</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: url("<c:url value='/resources/images/construction-bg.jpg'/>") no-repeat center center fixed;
            background-size: cover;
        }
        .container{
            height:80vh;
            
        }
        .login-container {
            margin-top: 25%;
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
                <h3 class="text-center mb-4">Login</h3>
                <form action="loginUser" method="post">
                    <div class="mb-3">
                        <label for="email" class="form-label">Username / Email</label>
                        <input type="email" class="form-control" name="email" id="email" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" name="password" id="password" required>
                    </div>
                    </br>
                    <button type="submit" class="btn btn-warning w-100 btn-custom">Login</button>
                </form>
                 <c:if test="${not empty message}">
                    <div class="alert alert-info mt-2 text-center">
                        ${message}
                    </div>
                </c:if>
                <div class="text-center mt-3">
                    <small>Don’t have an account? <a href="registerPage" class="text-warning">Register</a></small>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Bootstrap Bundle -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<%@ include file="nav/footer.jsp" %>
</body>
</html>
