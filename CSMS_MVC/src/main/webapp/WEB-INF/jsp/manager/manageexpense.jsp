<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Expenses - Site Manager</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"/>
    <style>
        body { background-color: #f9f9f9; }
        .card { border-radius: 15px; box-shadow: 0px 4px 6px rgba(0,0,0,0.1); }
        .btn-custom { border-radius: 10px; }
    </style>
</head>
<body>

<div class="container-fluid">
		<div class="row">

			<!-- Sidebar (Manager Nav) -->
			<div class="col-md-2 p-0 bg-dark text-white">
				<%@ include file="/WEB-INF/jsp/manager/managernav.jsp"%>
			</div>

<div class="col-md-10 mt-5">

          <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
					<h4> Welcome, <c:out value="${sessionScope.username}" /> 👷 </h4>
					<h2> <a class="navbar-brand" href="admindash">🏗️ Matoshree Construction.</a> </h2>
				</div>

    <h2 class="mb-4 text-center">Manage Expenses</h2>

    <!-- Show message -->
    <c:if test="${not empty message}">
        <div class="alert alert-info text-center">${message}</div>
    </c:if>

    <!-- Step 1: Select Site -->
    <div class="card p-4 mb-4">
        <h5 class="card-title">Select Site</h5>
        <form action="manageexpense" method="get">
            <div class="row">
                <div class="col-md-8">
                    <select name="siteId" class="form-select" required>
                        <option value="">-- Select Site --</option>
                        <c:forEach var="site" items="${sites}">
                            <option value="${site.site_id}" ${site.site_id == selectedSiteId ? "selected" : ""}>
                                ${site.site_name} (${site.location})
                            </option>
                        </c:forEach>
                    </select>
                </div>
                <div class="col-md-4">
                    <button type="submit" class="btn btn-primary btn-custom w-100">View Expenses</button>
                </div>
            </div>
        </form>
    </div>

    <!-- Step 2: Show Expenses if Site Selected -->
    <c:if test="${not empty selectedSiteId}">
        <div class="card p-4 mb-4">
            <h5 class="card-title">Add Expense for Site: <b>${selectedSite.site_name}</b></h5>
            <form action="addExpense" method="post">
                <input type="hidden" name="siteId" value="${selectedSiteId}"/>

                <div class="row">
                    <div class="col-md-3">
                        <label class="form-label">Date</label>
                        <input type="date" name="date" class="form-control" required/>
                    </div>
                    <div class="col-md-3">
                        <label class="form-label">Category</label>
                        <select name="category" class="form-select">
                            <option>Material</option>
                            <option>Labor</option>
                            <option>Transport</option>
                            <option>Other</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label class="form-label">Amount</label>
                        <input type="number" name="amount" class="form-control" required/>
                    </div>
                    <div class="col-md-3">
                        <label class="form-label">Description</label>
                        <input type="text" name="description" class="form-control"/>
                    </div>
                </div>
                <div class="mt-3 text-end">
                    <button type="submit" class="btn btn-success btn-custom">Add Expense</button>
                </div>
            </form>
        </div>

        <!-- Expense List -->
       <div class="card p-4">
            <h5 class="card-title">Expense Records</h5>
            <c:out value="${expenses}" />
             <table class="table table-bordered table-hover mt-3">
                <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Date</th>
                    <th>Category</th>
                    <th>Amount</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="exp" items="${expenses}">
                    <tr>
                        <td>${exp.expense_id}</td>
                        <td>${exp.date}</td>
                        <td>${exp.expense_type}</td>
                        <td>₹${exp.amount}</td>
                        <td>
                            <form action="updateExpense" method="post" style="display:inline;">
                                <input type="hidden" name="expenseId" value="${exp.expense_id}"/>
                                <button class="btn btn-warning btn-sm">Update</button>
                            </form>
                            <form action="deleteExpense" method="post" style="display:inline;" 
                                  onsubmit="return confirm('Delete this expense?');">
                                <input type="hidden" name="expenseId" value="${exp.expense_id}"/>
                                <button class="btn btn-danger btn-sm">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div> 
    </c:if>
</div>
</div>
</div>

</body>
</html>
