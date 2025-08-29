<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin | Manage Users </title>
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

<div class="sidebar">
    <%@ include file="/WEB-INF/jsp/admin/adminav.jsp" %>
</div>
	<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 content">
		<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
			<h4>Welcome,<c:out value="${sessionScope.username}" />👷 </h4>
			<h2><a class="navbar-brand" href="admindash">🏗️ Matoshree Construction.</a></h2>
		</div>
		<div class="container">
		  <div class="container d-flex justify-content-between">
			<h2 class="mb-4">Manage Users</h2>
		
              <c:if test="${not empty message}">
                 <div id="messageBox" style="color: ${messageType == 'error' ? 'red' : 'green'};">
                    <strong> ${message}</strong> 
                 </div>
                <script>
                      setTimeout(() => {
                              const box = document.getElementById("messageBox");
                              if (box) box.style.display = "none";
                          }, 3000);
                </script>
             </c:if>
             </div>
			<!-- Add User Button -->
			<button class="btn btn-primary mb-3" data-bs-toggle="modal"
				data-bs-target="#addUserModal">
				<i class="fa fa-user-plus"></i> Add User
			</button>

			<!-- Users Table -->
			<table class="table table-bordered table-striped">
				<thead class="table-dark">
					<tr>
						<th>User ID</th>
						<th>Name</th>
						<th>Role</th>
						<th>Email</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="user" items="${users}">
						<tr>
							<td>${user.id}</td>
							<td>${user.name}</td>
							<td>${user.role}</td>
							<td>${user.email}</td>
							<td>
								<!-- Edit Button -->
								<button class="btn btn-sm btn-warning" data-bs-toggle="modal" data-bs-target="#editUserModal${user.id}">
									<i class="fa fa-edit"></i>
								</button> <!-- Delete Button -->
								 <a	href="deleteuser/${user.id}" class="btn btn-sm btn-danger"
								      onclick="return confirm('Are you sure you want to delete this user?');">
									<i class="fa fa-trash"></i>
							    </a>
							</td>
						</tr>

						<!-- Edit User Modal -->
						<div class="modal fade" id="editUserModal${user.id}"
							tabindex="-1" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<form action="updateuser" method="post" ModelAttribute="bean">
										<div class="modal-header">
											<h5 class="modal-title">Edit User</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal"></button>
										</div>
										<div class="modal-body">
											<input type="hidden" name="id" value="${user.id}">
											<div class="mb-3">
												<label class="form-label">Name</label> <input
													type="text" name="name" class="form-control"
													value="${user.name}" required>
											</div>
											<div class="mb-3">
												<label class="form-label">Email</label> 
												   <input type="email" name="email" class="form-control" value="${user.email}" required>
											</div>
											<div class="mb-3">
												<label class="form-label">Role</label> <select name="role"
													class="form-select" required>
													<option value="ADMIN" ${user.role=='ADMIN'?'selected':''}>Admin</option>
													<option value="SITE_MANAGER"
														${user.role=='SITE_MANAGER'?'selected':''}>Site Manager</option>
													<option value="ACCOUNTANT" ${user.role=='ACCOUNTANT'?'selected':''}>Accountant</option>
												</select>
											</div>
											<div class="mb-3">
												<label class="form-label">Password</label> <input
													type="password" name="password" class="form-control"
													placeholder="Enter new password if you want to change">
											</div>
										</div>
										<div class="modal-footer">
											<button type="submit" class="btn btn-success">Update</button>
											<button type="button" class="btn btn-secondary"
												data-bs-dismiss="modal">Cancel</button>
										</div>
									</form>
								</div>
							</div>
						</div>

					</c:forEach>
				</tbody>
			</table>
		</div>
	</main>
	<!-- Add User Modal -->
<div class="modal fade" id="addUserModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="adduser" method="post">
                <div class="modal-header">
                    <h5 class="modal-title">Add User</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <div class="mb-3">
                        <label class="form-label">Name</label>
                        <input type="text" name="name" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Email</label>
                        <input type="email" name="email" class="form-control" required>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Role</label>
                        <select name="role" class="form-select" required>
                            <option value="ADMIN">Admin</option>
                            <option value="SITE_MANAGER">Site Manager</option>
                            <option value="ACCOUNTANT">Accountant</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Password</label>
                        <input type="password" name="password" class="form-control" required>
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
