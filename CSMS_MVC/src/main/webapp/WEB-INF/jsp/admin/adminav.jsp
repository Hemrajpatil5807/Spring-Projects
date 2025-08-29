
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin | Navbar</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
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

   <!-- Sidebar -->
        <nav class="col-md-2 d-none d-md-block sidebar">
            <div class="position-sticky pt-3">
                <h4 class="text-center py-3">Admin Panel</h4>
                <a href="${pageContext.request.contextPath}/admin/sites"><i class="fa-solid fa-building"></i> Manage Sites</a>
                <a href="${pageContext.request.contextPath}/admin/materials"><i class="fa-solid fa-cubes"></i> Manage Materials</a>
                <a href="${pageContext.request.contextPath}/admin/suppliers"><i class="fa-solid fa-truck"></i> Manage Suppliers</a>
                <a href="${pageContext.request.contextPath}/admin/material-usage"><i class="fa-solid fa-warehouse"></i> Material Usage</a>
                <a href="${pageContext.request.contextPath}/admin/expenses"><i class="fa-solid fa-coins"></i> Expenses</a>
                <a href="manageusers"><i class="fa-solid fa-users"></i> Manage Users</a>
                <a href="${pageContext.request.contextPath}/admin/reports"><i class="fa-solid fa-chart-line"></i> Reports</a>
                <a href="index" class="text-danger"><i class="fa-solid fa-right-from-bracket"></i> Logout</a>
            </div>
        </nav>


</body>
</html>