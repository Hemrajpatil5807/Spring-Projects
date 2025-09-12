<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Manage Expenses - Construction Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
         <style>
        body {
            overflow-x: hidden;
        }
        .sidebar {
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            width: 240px;
            background-color: #343a40;
            color: white;
        }
        .sidebar a {
            color: white;
            text-decoration: none;
            display: block;
            padding: 12px 20px;
        }
        .sidebar a:hover {
            background: #495057;
        }
        .content {
            margin-left: 240px; /* same as sidebar width */
            padding: 20px;
        }
    </style>
    
    
</head>
<body>
<div class="container-fluid">
 <div class="row">

 <!-- Navbar -->
 <div class="col-md-2 p-0 bg-dark text-white">
   <%@include file="/WEB-INF/jsp/admin/adminav.jsp" %>
 </div>

 <!-- Content Area -->
 <div class="col-md-10 mt-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
			<h4>Welcome,<c:out value="${sessionScope.username}" />👷 </h4>
			<h2><a class="navbar-brand" href="admindash">🏗️ Matoshree Construction.</a></h2>
		</div>
    <h2 class="mb-4">Manage Expenses</h2>

    <!-- Add Expense Button -->
    <button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#addExpenseModal">
        <i class="fa fa-plus"></i> Add Expense
    </button>

    <!-- Expenses Table -->
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
        <tr>
            <th>Expense ID</th>
            <th>Site</th>
            <th>Description</th>
            <th>Amount</th>
            <th>Date</th>
            <!-- <th>Added By</th> -->
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="exp" items="${expenses}">
            <tr>
                <td>${exp.expence_id}</td>
                <td>${exp.site_id.site_name}</td>
                <td>${exp.expense_type}</td>
                <td>₹ ${exp.amount}</td>
                <td>${exp.date}</td>
              
                <td>
                    <!-- Edit Button -->
                    <button class="btn btn-sm btn-warning" data-bs-toggle="modal"
                            data-bs-target="#editExpenseModal${exp.expence_id}">
                        <i class="fa fa-edit"></i>
                    </button>

                    <!-- Delete Button -->
                    <a href="${pageContext.request.contextPath}/admin/expenses/delete/${exp.expence_id}"
                       class="btn btn-sm btn-danger"
                       onclick="return confirm('Are you sure you want to delete this expense?');">
                        <i class="fa fa-trash"></i>
                    </a>
                </td>
            </tr>

            <!-- Edit Expense Modal -->
            <div class="modal fade" id="editExpenseModal${exp.expence_id}" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="${pageContext.request.contextPath}/admin/expenses/update" method="post">
                            <div class="modal-header">
                                <h5 class="modal-title">Edit Expense</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>
                            <div class="modal-body">
                                <input type="hidden" name="expence_id" value="${exp.expence_id}">
                                <div class="mb-3">
                                    <label class="form-label">Site</label>
                                    <select name="siteId" class="form-select" required>
                                        <c:forEach var="site" items="${sites}">
                                            <option value="${site.siteId}" ${exp.site.siteId==site.siteId?'selected':''}>
                                                ${site.siteName}
                                            </option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Description</label>
                                    <input type="text" name="expense_type" class="form-control" value="${exp.expense_type}" required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Amount</label>
                                    <input type="number" step="0.01" name="amount" class="form-control" value="${exp.amount}" required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Date</label>
                                    <input type="date" name="date" class="form-control" value="${exp.date}" required>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-success">Update</button>
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </c:forEach>
        </tbody>
    </table>
 </div>
</div>
</div>

<!-- Add Expense Modal -->
<div class="modal fade" id="addExpenseModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="${pageContext.request.contextPath}/admin/expenses/add" method="post">
                <div class="modal-header">
                    <h5 class="modal-title">Add Expense</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label class="form-label">Site</label>
                        <select name="site_id" class="form-select" required>
                            <c:forEach var="site" items="${site_id}">
                                <option value="${site.site_id}">${site.site_name}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Description</label>
                        <input type="text" name="expense_type" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Amount</label>
                        <input type="number" step="0.01" name="amount" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Date</label>
                        <input type="date" name="date" class="form-control" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Save</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                </div>
            </form>
        </div>
    </div>
</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
