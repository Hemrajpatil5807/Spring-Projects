<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Customer</title>

<style>
* {
	margin: 0;
	padding: 0;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

#container {
	padding-top: 70px;
	box-sizing: border-box;
	height: 100vh;
	width: 100vw;
	background-color: rgb(240, 240, 240);
	border: rgb(80, 79, 79) solid 4px;
	display: flex;
	flex-direction: column;
	align-items: center;
}

#inner-card {
	z-index: 2;
	height: 79vh;
	width: 30vw;
	background-color: rgb(80, 79, 79);
	border-radius: 18px;
	display: flex;
	justify-content: center;
	align-items: center;
}

#inner-inner-card {
	height: 60vh;
	width: 24vw;
	background-color: rgb(80, 79, 79);
	border-radius: 20px;
	border: 2px solid white;
}

#form {
	display: flex;
	flex-direction: column;
	justify-content: center;
	padding: 15px 40px 40px 40px;
	color: white;
}

.fg1 {
	font-size: 16px;
	height: 4vh;
	width: 100%;
	border-radius: 8px;
	border: none;
	text-indent: .5vh;
}

.inputForms {
	display: flex;
	flex-direction: row;
	align-items: center;
	margin-top: 5px;
	margin-bottom: 10px;
}

#button {
	height: 5vh;
	width: 7vw;
	border-radius: 10px;
	font-size: 19px;
	color: rgb(80, 79, 79);
	font-weight: 700;
	border: 2px solid rgb(112, 111, 113);
	cursor: pointer;
	margin-left: 90px;
}
</style>

</head>
<body>
<%@include file="empheader.jsp" %>

<div id="container">
		<div id="inner-card">
			<div id="inner-inner-card">
				<form action="deleteUser" id="form" method="post">
					<div class="title">
						<h1>Delete Customer </h1>
					</div>
					<hr><br><br>
					<h4>Enter Account No.</h4>
					<br>
					<div class="inputForms">
						<input class="fg1" type="text" name="accountNo"	 placeholder="    Account NO"> <br>
						<br>
					</div>
					<br>
					<br>
					<div>
						<button id="button" type="submit">Submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>


</body>
</html>