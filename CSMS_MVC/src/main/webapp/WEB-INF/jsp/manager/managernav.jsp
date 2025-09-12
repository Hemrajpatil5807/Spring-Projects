<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="d-flex flex-column p-3 bg-dark text-white vh-100" style="min-height: 100vh;">
    <h4 class="text-center mb-4">
        <i class="fa fa-user-helmet"></i> Site Manager
    </h4>

    <ul class="nav nav-pills flex-column mb-auto">
        <!-- Dashboard -->
        <li class="nav-item mb-2">
            <a href="${pageContext.request.contextPath}/manager/dashboard"
               class="nav-link text-white ${pageContext.request.requestURI.endsWith('/dashboard') ? 'active bg-primary' : ''}">
                <i class="fa fa-gauge-high me-2"></i> Dashboard
            </a>
        </li>

        <!-- Sites Assigned -->
        <li class="nav-item mb-2">
            <a href="${pageContext.request.contextPath}/manager/sites"
               class="nav-link text-white ${pageContext.request.requestURI.contains('/sites') ? 'active bg-primary' : ''}">
                <i class="fa fa-building me-2"></i> My Sites
            </a>
        </li>

        <!-- Materials Management -->
        <li class="nav-item mb-2">
            <a href="${pageContext.request.contextPath}/manager/materials"
               class="nav-link text-white ${pageContext.request.requestURI.contains('/materials') ? 'active bg-primary' : ''}">
                <i class="fa fa-boxes-stacked me-2"></i> Materials
            </a>
        </li>

        <!-- Expenses -->
        <li class="nav-item mb-2">
            <a href="${pageContext.request.contextPath}/manager/expenses"
               class="nav-link text-white ${pageContext.request.requestURI.contains('/expenses') ? 'active bg-primary' : ''}">
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
