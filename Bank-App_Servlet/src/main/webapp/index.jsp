<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SBI Bank</title>

<style>
:root {
	--basic: rgb(80, 79, 79);
}

* {
	margin: 0;
	padding: 0;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

#main {
	box-sizing: border-box;
	height: 100vh;
	width: 100vw;
	border: rgb(59, 59, 59) solid 4px;
	background-color: rgb(240, 240, 240);
	display: flex;
	align-items: center;
	flex-direction: column;
	gap: 8vh;
}

#main>#outer-card {
	margin: 5vw 0;
	font-size: 50px;
	font-weight: 700;
	text-align: center;
	color: white;
	border-radius: 20px;
	background-color: var(--basic);
	padding: 3vh;
	text-shadow: 1px 1px 2px black;
	text-transform: uppercase;
}

#inner-card {
	height: 48vh;
	width: 35vw;
	background-color: var(--basic);
	border-radius: 18px;
	display: flex;
	justify-content: center;
	align-items: center;
}

#inner-inner-card {
	height: 44vh;
	width: 24vw;
	background-color: var(--basic);
	border-radius: 20px;
	border: 2px solid white;
}

#form {
	display: flex;
	flex-direction: column;
	justify-content: center;
	padding: 40px;
	color: white;
}

.fg1 {
	height: 4vh;
	width: 100%;
	border-radius: 8px;
	border: none;
	text-indent: .5vh;
}

#buttons {
	position: absolute;
	top: 80vh;
	display: flex;
	gap: 4vh;
	align-items: center;
	justify-content: space-between;
}

#button, #cus {
	height: 5vh;
	width: 17vh;
	border-radius: 10px;
	font-size: 19px;
	color: var(--basic);
	font-weight: 700;
	border: 2px solid rgb(158, 157, 157);
}

#cus {
	width: 10vw;
}

.inputForms {
	display: flex;
	flex-direction: row;
	align-items: center;
	margin-top: 5px;
	margin-bottom: 10px;
}

#message {
	font-size: 14px;
	padding: 1.5vh;
	margin-top: 2vh;
	border-radius: 10px;
	background-color: rgba(240, 63, 63, 0.486);
	border: 2px solid red;
}

#section {
	width: 80vw;
	display: flex;
	justify-content: center;
	align-items: flex-start;
	gap: 15vh;
}
</style>

</head>
<body>

	<div id="container">
		<div id="main">
			<div id="outer-card">Bank Management System</div>
			<div id="section">
				<div id="content">
					<h2>This is a Java servlet-based web application for managing
						customer accounts in a bank.</h2>
					<br>
					<h3>Authentication and Authorization:</h3>
					<ul>
						<li>
							<p>Secure login to protect sensitive information</p>
						</li>
					</ul>
					<br>
					<h3>Customer Management:</h3>
					<ul>
						<li>
							<p>View, create, update, and delete customer accounts.</p>
						</li>
						<li>
							<p>Block and unblock customer accounts.</p>
						</li>
					</ul>
					
					<a href="empregister.jsp">Employee Registration</a> <br><br>
					<a href="viewEmp.jsp">View Employee Detail</a><br><br>
					<a href="header.jsp">View Header</a>
				</div>
				<div id="inner-card">
					<div id="inner-inner-card">
						<form action="login" id="form" method="post">
							<h4>Email</h4>
							<div class="inputForms">
								<input type="email" name="email" class="fg1" required>
							</div>
							<h4>Password</h4>
							<div class="inputForms">
								<input type="password" name="password" class="fg1" required>
							</div>
							<div id='msg-cont'>
								<p id="messaged">
									 ${message} 
								</p>
							</div>
							<div id="buttons">
								<button type="submit" id="button">Login</button>
								<button type="submit" id="button" style="width:20vh">Customer Login</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>