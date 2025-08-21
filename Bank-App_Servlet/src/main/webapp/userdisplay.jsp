<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Detail</title>

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
      text-align: left;
    }

    th {
      background-color: #f2f2f2;
    }

    tr:hover {
      background-color: #f9f9f9;
    }
  </style>
</head>
<body>
 <%@include file="empheader.jsp"%>
<div id="container">
<h1>Customer Details</h1>
  <table>
    <thead>
      <tr>
        <th>Account No</th>
        <th>Name</th>
        <th>Email</th>
        <th>Mobile</th>
        <th>Address</th>
        <th>Pin</th>
        <th>Branch ID</th>
        <th>Balance</th>  
      </tr>
    </thead>
    <tbody>    
      <tr>
        <td>${u.getAccountNo()}</td>
        <td>${u.getName()}</td>
        <td>${u.getEmail()}</td>
        <td>${u.getMobile()}</td>
        <td>${u.getAddress()}</td>
        <td>${u.getPin()}</td>
        <td>${u.getBranchId()}</td>
        <td>${u.getBalance()}</td>
      </tr>
    </tbody>
  </table>

</div>


</body>
</html>