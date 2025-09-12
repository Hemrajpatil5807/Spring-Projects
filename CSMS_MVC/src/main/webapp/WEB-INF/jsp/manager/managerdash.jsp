<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Site Manager Dashboard</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>

	<div class="container-fluid">
		<div class="row">

			<!-- Sidebar (Manager Nav) -->
			<div class="col-md-2 p-0 bg-dark text-white">
				<%@ include file="/WEB-INF/jsp/manager/managernav.jsp"%>
			</div>

			<!-- Main Content -->
			<div class="col-md-10 mt-4">
				<h2 class="mb-4">Welcome, ${sessionScope.username}</h2>

				<!-- Summary Cards -->
				<div class="row mb-4">
					<div class="col-md-4">
						<div class="card shadow rounded-3">
							<div class="card-body text-center">
								<h5 class="card-title text-primary">
									<i class="fa fa-helmet-safety"></i> Active Sites
								</h5>
								<h3>${activeSitesCount}</h3>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="card shadow rounded-3">
							<div class="card-body text-center">
								<h5 class="card-title text-success">
									<i class="fa fa-boxes-stacked"></i> Total Materials Used
								</h5>
								<h3>${totalMaterialsUsed}</h3>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="card shadow rounded-3">
							<div class="card-body text-center">
								<h5 class="card-title text-danger">
									<i class="fa fa-indian-rupee-sign"></i> Total Expenses
								</h5>
								<h3>₹ ${totalExpenses}</h3>
							</div>
						</div>
					</div>
				</div>

				<!-- Sites Assigned Table -->
				<div class="card shadow rounded-3 mb-4">
					<div class="card-header bg-primary text-white">
						<h5 class="mb-0">
							<i class="fa fa-building"></i> Your Sites
						</h5>
					</div>
					<div class="card-body">
						<table class="table table-bordered table-hover">
							<thead class="table-dark">
								<tr>
									<th>Site Name</th>
									<th>Location</th>
									<th>Progress</th>
									<th>Start Date</th>
									<th>Expected Completion</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="site" items="${sites}">
									<tr>
										<td>${site.site_name}</td>
										<td>${site.location}</td>
										<td>${site.status}</td>
										<td>${site.startDate}</td>
										<td>${site.endDate}</td>
										<td>
											<!-- Update Progress -->
											<button class="btn btn-sm btn-warning" data-bs-toggle="modal"
												data-bs-target="#updateProgressModal${site.site_id}">
												<i class="fa fa-chart-line"></i> Update Progress
											</button> <!-- Manage Materials --> <a
											href="${pageContext.request.contextPath}/manager/materials/${site.site_id}"
											class="btn btn-sm btn-info"> <i
												class="fa fa-boxes-stacked"></i> Materials
										</a> <!-- Manage Expenses --> <a
											href="${pageContext.request.contextPath}/manager/expenses/${site.site_id}"
											class="btn btn-sm btn-success"> <i
												class="fa fa-money-bill"></i> Expenses
										</a>
										</td>
									</tr>

									<!-- Update Progress Modal -->
									<div class="modal fade" id="updateProgressModal${site.site_id}"
										tabindex="-1" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<form action="updatesite" method="post">
													<div class="modal-header">
														<h5 class="modal-title">Update Progress for ${site.site_name}</h5>
														<button type="button" class="btn-close"
															data-bs-dismiss="modal"></button>
													</div>
													<div class="modal-body">
														<input type="hidden" name="siteId" value="${site.site_id}">
														<div class="mb-3">
															<label class="form-label">Status</label> <select
																name="status" class="form-select" required>
																<option value="ACTIVE">Active</option>
																<option value="COMPLETED">Completed</option>
																<option value="ON_HOLD">On Hold</option>
															</select>
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
				</div>

			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
