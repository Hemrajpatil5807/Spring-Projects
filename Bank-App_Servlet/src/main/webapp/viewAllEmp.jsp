<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Details</title>

<style>
 
  #container {
            box-sizing: border-box;
            height: 100vh;
            width: 100vw;
            background-color: rgb(240, 240, 240);
            border: rgb(80, 79, 79) solid 4px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
 
    body{
       background-color:white;
    }
    h1{
        color:rgb(80, 79, 79);
        text-align:center;
    }
    table {
      width: 80%;
      border-collapse: collapse;
      margin: 20px auto;
      font-family: Arial, sans-serif;
    }

    th, td {
      border: 1px solid #ccc;
      padding: 10px;
    
    }

    th {
      background-color: #f2f2f2;
    }

    tr:hover {
      background-color: #f9f9f9;
    }
    
    .btn-a{
         
         display : flex;
    }
    .btn{
       margin-left: 2px;
    }
    
  </style>


</head>
<body>
<%@include file="adminheader.jsp"%>
<h1>Employee Details</h1>
  <table>
    <thead>
     <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Mobile</th>
        <th>Address</th>
        <th>Salary</th>
        <th>Password</th>
        <th>Branch ID</th>  
        <th>Operations</th>  
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${elist}" var="emp" >      
      <tr>
        <td>${emp.getEmpID()}</td>
        <td>${emp.getName()}</td>
        <td>${emp.getEmail()}</td>
        <td>${emp.getMobile()}</td>
        <td>${emp.getAddress()}</td>
        <td>${emp.getSalary()}</td>
        <td>${emp.getPassword()}</td>
        <td>${emp.getBranchId()}</td>
        <td class="btn-a"><a href="updateEmployeeForm?empID=${emp.getEmpID()}"><button class="btn">Update</button></a><a href="deleteEmployee?empID=${emp.getEmpID()}"><button class="btn">Delete</button></a></td>
      </tr>
      </c:forEach>
   </tbody>
  </table>

</body>
</html>