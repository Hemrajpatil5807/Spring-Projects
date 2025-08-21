<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Update Employee  </title>

 <style>

         * {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        #container {
            padding-top: 40px;
            padding-bottom: 20px;
            box-sizing: border-box;
            height: 110vh;
            width: 100vw;
            background-color: rgb(240, 240, 240);
            border: rgb(80, 79, 79) solid 4px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
      
       #inner-card {
            z-index: 2;
            height: 110vh;
            width: 30vw;
            background-color: rgb(80, 79, 79);
            border-radius: 18px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #inner-inner-card {
            height: 90vh;
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
            margin-left: 20px;
        }
        
    </style>

</head>
<body>
 <%@include file="adminheader.jsp"%>
<div id="container">
    <div id="inner-card">
                <div id="inner-inner-card">
                    <form action="updateEmployee" id="form">
                        <div>
                            <h2 style="text-align: center;margin-bottom: 4vh;">Update Employee Details</h2>
                        </div>
                         <h4>Branch ID</h4>
                        <div class="inputForms">
                            <input type="number" pattern="[0-9]" name="branchId" placeholder="Branch Id" class="fg1" required>
                        </div>
                         <h4>Employee ID</h4>
                        <div class="inputForms">
                            <input type="number" pattern="[0-9]" name="empID" value="${empID}" class="fg1" required>
                        </div>
                        <h4>Name</h4>
                        <div class="inputForms">
                            <input type="text" name="name"  placeholder="Name" class="fg1" required>
                        </div>
                        <h4>Email</h4>
                        <div class="inputForms">
                            <input type="email" name="email" placeholder="you@example.com"  class="fg1" required>
                        </div>
                        <h4>Mobile No.</h4>
                        <div class="inputForms">
                            <input type="tel" pattern="^[0-9]{10}$" name="mobile" placeholder="1234567890" class="fg1" required>
                        </div>
                        <h4>Address</h4>
                        <div class="inputForms">
                             <textarea name="address" rows="4" placeholder="Enter your permanent address" class="fg1" required></textarea>
                        </div>
                        <h4>Salary</h4>
                        <div class="inputForms">
                            <input type="number" name="salary"  pattern="^[0-9]$" placeholder="112233.00" class="fg1" min="0" step="0.01" required>
                        </div>
                        <h4>Password</h4>
                        <div class="inputForms">
                            <input type="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^&*_=+-]).{8,16}" placeholder="Password@123" class="fg1" required>
                        </div>
                        <div>
                            <input type="submit" value="Submit" id="button">
                            <input type="reset" value="Reset" id="button">
                        </div>
                    </form>
                </div>
            </div>
      </div>

</body>
</html>