<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Veracity Soft.pvt.ltd</title>

<style>
h1 {
	color: green;
}

h2 {
	color: red;
}
</style>

</head>
<body>
	<h1>${successMsg}</h1>
	<h2>${errorMsg}</h2>
	<h1 style = color:black>${uaccountNo}</h1><br>
	<h1 style = color:black>${balance}</h1>
	
	<p>
	   ${emp.getEmpID()}
	   ${emp.getName()}
	   ${emp.getEmail()}
	   ${emp.getMobile()}
	   ${emp.getAddress()}
 	   ${emp.getSalary()}
  	   ${emp.getPassword()}
	   ${emp.getBranchId()}
	   
	</p>
</body>
</html>