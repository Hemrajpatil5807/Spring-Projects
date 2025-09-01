<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Manage Material - Matoshree Construction</title>
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
 <div class="col-md-10 mt-4 px-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
			<h4>Welcome,<c:out value="${sessionScope.username}" />👷 </h4>
			<h2><a class="navbar-brand" href="admindash">🏗️ Matoshree Construction.</a></h2>
		</div>
    <h2 class="mb-4">Manage Materials</h2>

    <!-- Add Site Button -->
    <button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#addMaterialModal">
        <i class="fa fa-plus"></i> Add Material
    </button>

    <!-- Sites Table -->
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
        <tr>
            <th>Material ID</th>
            <th>Material Name</th>
            <th>Unit</th>
            <th>Available Stock</th>
            <th>Price/Unit</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="material" items="${materials}">
            <tr>
                <td>${material.material_id}</td>
                <td>${material.material_name}</td>
                <td>${material.unit}</td>
                <td>${material.available_stock}</td>
                <td>${material.unitPrice}</td>
                <td>
                    <!-- Edit Button -->
                    <button class="btn btn-sm btn-warning" data-bs-toggle="modal"
                            data-bs-target="#editMaterialModal${material.material_id}">
                        <i class="fa fa-edit"></i>
                    </button>

                    <!-- Delete Button -->
                    <a href="deletematerial/${material.material_id}"
                       class="btn btn-sm btn-danger"
                       onclick="return confirm('Are you sure you want to delete this site?');">
                        <i class="fa fa-trash"></i>
                    </a>
                </td>
            </tr>

            <!-- Edit Site Modal -->
            <div class="modal fade" id="editMaterialModal${material.material_id}" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="updatematerial" method="post" ModelAttribute="bean">
                            <div class="modal-header">
                                <h5 class="modal-title">Edit Material</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>
                            <div class="modal-body">
                                <input type="hidden" name="material_id" value="${material.material_id}">
                                <div class="mb-3">
                                    <label class="form-label">Material Name</label>
                                    <input type="text" name="material_name" class="form-control" value="${material.material_name}" required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Units</label>
                                    <input type="text" name="unit" class="form-control" value="${material.unit}" required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Available Stock</label>
                                    <input type="number" name="available_stock" class="form-control" value="${material.available_stock}" required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Price/Unit</label>
                                    <input type="price" name="unitPrice" class="form-control" value="${material.unitPrice}" required>
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

<!-- Add Material Modal -->
<div class="modal fade" id="addMaterialModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="addmaterial" method="post">
                <div class="modal-header">
                    <h5 class="modal-title">Add Material</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label class="form-label">Material Name</label>
                        <input type="text" name="material_name" class="form-control" placeholder="Ex. cement, steel, sand" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Unit kg/bag/ton/</label>
                        <input type="text" name="unit" class="form-control" placeholder="Ex. kg , quintal, ton , bag , trip" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Available Stock</label>
                        <input type="number" name="available_stock" class="form-control" placeholder="Ex. 100 Bag, 2 ton, 10 trip" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Price/Unit</label>
                        <input type="price" name="unitPrice" class="form-control" placeholder="Ex.5000 " required>
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
