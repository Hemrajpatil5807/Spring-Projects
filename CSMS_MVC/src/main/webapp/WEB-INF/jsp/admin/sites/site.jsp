<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Manage Sites - Construction Management</title>
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
    <h2 class="mb-4">Manage Sites</h2>

    <!-- Add Site Button -->
    <button class="btn btn-primary mb-3" data-bs-toggle="modal" data-bs-target="#addSiteModal">
        <i class="fa fa-plus"></i> Add Site
    </button>

    <!-- Sites Table -->
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
        <tr>
            <th>Site ID</th>
            <th>Site Name</th>
            <th>Location</th>
            <th>Start Date</th>
            <th>End Date</th>
            <th>Site Manager</th>
            <th>Status</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="site" items="${sites}">
            <tr>
                <td>${site.site_id}</td>
                <td>${site.site_name}</td>
                <td>${site.location}</td>
                <td>${site.startDate}</td>
                <td>${site.endDate}</td>
                <td>${site.manager_id.name}</td>
                <td>
                    <span class="badge ${site.status=='ACTIVE' ? 'bg-success' : 'bg-secondary'}">
                        ${site.status}
                    </span>
                </td>
                <td>
                    <!-- Edit Button -->
                    <button class="btn btn-sm btn-warning" data-bs-toggle="modal"
                            data-bs-target="#editSiteModal${site.site_id}">
                        <i class="fa fa-edit"></i>
                    </button>

                    <!-- Delete Button -->
                    <a href="deletesite/${site.site_id}"
                       class="btn btn-sm btn-danger"
                       onclick="return confirm('Are you sure you want to delete this site?');">
                        <i class="fa fa-trash"></i>
                    </a>
                </td>
            </tr>

            <!-- Edit Site Modal -->
            <div class="modal fade" id="editSiteModal${site.site_id}" tabindex="-1" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="updatesite" method="post" ModelAttribute="bean">
                            <div class="modal-header">
                                <h5 class="modal-title">Edit Site</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                            </div>
                            <div class="modal-body">
                                <input type="hidden" name="site_id" value="${site.site_id}">
                                <div class="mb-3">
                                    <label class="form-label">Site Name</label>
                                    <input type="text" name="site_name" class="form-control" value="${site.site_name}" required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Location</label>
                                    <input type="text" name="location" class="form-control" value="${site.location}" required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Start Date</label>
                                    <input type="date" name="startDate" class="form-control" value="${site.startDate}" required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">End Date</label>
                                    <input type="date" name="endDate" class="form-control" value="${site.endDate}" required>
                                </div>
                                <div class="mb-3">
                                    <label class="form-label">Status</label>
                                    <select name="status" class="form-select" required>
                                        <option value="ACTIVE" ${site.status=='ACTIVE'?'selected':''}>Active</option>
                                        <option value="COMPLETED" ${site.status=='COMPLETED'?'selected':''}>Completed</option>
                                        <option value="ON_HOLD" ${site.status=='ON_HOLD'?'selected':''}>On Hold</option>
                                    </select>
                                </div>
								<div class="mb-3">
									<label for="manager_id" class="form-label">Site	Manager ID</label> 
									  <input type="number" class="form-control"	name="manager_id" id="manager_id" required>
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

<!-- Add Site Modal -->
<div class="modal fade" id="addSiteModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="addsite" method="post">
                <div class="modal-header">
                    <h5 class="modal-title">Add Site</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label class="form-label">Site Name</label>
                        <input type="text" name="site_name" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Location</label>
                        <input type="text" name="location" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Start Date</label>
                        <input type="date" name="startDate" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">End Date</label>
                        <input type="date" name="endDate" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Status</label>
                        <select name="status" class="form-select" required>
                            <option value="ACTIVE">Active</option>
                            <option value="COMPLETED">Completed</option>
                            <option value="ON_HOLD">On Hold</option>
                        </select>
                    </div>
                    <div class="mb-3">
						<label for="manager_id" class="form-label">Site	Manager ID</label> 
						 <input type="number" class="form-control"	name="manager_id" id="manager_id" required>
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
