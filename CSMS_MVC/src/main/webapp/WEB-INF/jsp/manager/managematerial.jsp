<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Materials - Site Manager</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"/>
    <style>
        body {
            background-color: #f9f9f9;
        }
        .card {
            border-radius: 15px;
            box-shadow: 0px 4px 6px rgba(0,0,0,0.1);
        }
        .btn-custom {
            border-radius: 10px;
        }
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
    <h2 class="mb-4 text-center">Manage Materials</h2>

    <!-- Show Success/Failure Messages -->
    <c:if test="${not empty message}">
        <div class="alert alert-info text-center">${message}</div>
    </c:if>

    <!-- Add Material Form -->
    <div class="card p-4 mb-4">
        <h5 class="card-title">Add New Material</h5>
        <form action="addmaterial" method="post">
            <div class="row">
                <div class="col-md-3">
                    <label class="form-label">Material Name</label>
                    <input type="text" name="material_name" class="form-control" required/>
                </div>
                <div class="col-md-2">
                    <label class="form-label">Quantity</label>
                    <input type="number" name="available_stock" class="form-control" required/>
                </div>
                <div class="col-md-2">
                    <label class="form-label">Unit</label>
                    <select name="unit" class="form-select">
                        <option>kg</option>
                        <option>ton</option>
                        <option>bags</option>
                        <option>bras</option>
                        <option>pieces</option>
                    </select>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Cost</label>
                    <input type="number" name="unitPrice" class="form-control" required/>
                </div>
                <div class="col-md-2 d-flex align-items-end">
                    <button type="submit" class="btn btn-success w-100 btn-custom">Add</button>
                </div>
            </div>
        </form>
    </div>

    <!-- Materials Table -->
    <div class="card p-4">
        <h5 class="card-title">Material Records</h5>
        <table class="table table-bordered table-hover mt-3">
            <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Material Name</th>
                <th>Quantity</th>
                <th>Unit</th>
                <th>Cost</th>
                <th>Total</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="material" items="${materials}">
                <tr>
                    <td>${material.material_id}</td>
                    <td>${material.material_name}</td>
                    <td>${material.available_stock}</td>
                    <td>${material.unit}</td>
                    <td>₹${material.unitPrice}</td>
                    <td>₹${material.available_stock * material.unitPrice}</td>
                    <td>
                        <!-- Update Form -->
                        <form action="updateMaterial" method="post" style="display:inline;">
                            <input type="hidden" name="materialId" value="${material.material_id}"/>
                            <button class="btn btn-warning btn-sm">Update</button>
                        </form>

                        <!-- Delete Form -->
                        <form action="deleteMaterial" method="post" style="display:inline;" 
                              onsubmit="return confirm('Are you sure to delete this material?');">
                            <input type="hidden" name="materialId" value="${material.material_id}"/>
                            <button class="btn btn-danger btn-sm">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

</div>

</div>
</div>

</body>
</html>
