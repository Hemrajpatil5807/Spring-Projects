<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin | Add User</title>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
   
<style>
       body {
            background: url("<c:url value='/resources/images/construction.jpg'/>") no-repeat center center fixed;
            background-size: cover;
        } 
       /*  .container{
            height:0vh;
            
        } */
     /*      .overlay {
            background-color: rgba(0, 0, 0, 0.3);
            position: absolute;
            top: 75px;
            left: 0;
            right: 0;
            bottom: 0;
        }  */
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
    <%@include file="/WEB-INF/jsp/admin/adminav.jsp" %>
       <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 content">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
                <h4>Welcome, <c:out value="${sessionScope.username}" /> 👷</h4>
                <h2><a class="navbar-brand" href="admindash">🏗️ Matoshree Construction.</a></h2> 
            </div>

    <div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6 col-lg-4">
            <div class="login-container">
                <h3 class="text-center mb-4">Add User</h3>
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
        </main>
    </div>
</div>

</div>
</div>

<%-- <%@ include file="/WEB-INF/jsp/nav/footer.jsp" %> --%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>