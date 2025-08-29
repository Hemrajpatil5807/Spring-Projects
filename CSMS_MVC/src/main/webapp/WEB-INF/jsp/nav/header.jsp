<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <li class="nav-item me-2"><a class="nav-link" href="sites.jsp">Sites</a></li>
                <li class="nav-item me-2"><a class="nav-link" href="materials.jsp">Materials</a></li>
                <li class="nav-item me-2"><a class="nav-link" href="expenses.jsp">Expenses</a></li>
                <li class="nav-item me-2"><a class="nav-link" href="index">LogOut</a></li>
            </ul>
        </div>
    </div>
</nav>
