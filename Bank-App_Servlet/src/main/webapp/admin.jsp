<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SBI Admin</title>

<style>
        :root {
            --basic: rgb(80, 79, 79);
        }

        * {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        #container {
            box-sizing: border-box;
            height: 100vh;
            width: 100vw;
            background-color: rgb(240, 240, 240);
            border: var(--basic) solid 4px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        #outer-card {
            padding: 0 1vw;
            display: flex;
            align-items: center;
            justify-content: space-between;
            width: 98vw;
            height: 6vh;
            background-color: var(--basic);
        }

        #title {
            color: white;
            font-weight: 600;
            font-size: 25px;
        }
        #user{
            box-shadow: 0px 0px 0 1px rgb(255, 255, 255);
            border-radius: 10px;
            padding: 0.5vh 1vh;
        }

        #links {
            display: flex;
            gap: 5vh;
        }

        #links>a {
            font-size: 18px;
            color: white;
            text-decoration: none;
            padding: 0.5vh 1vh;
        }

        #links>a:hover {
            box-shadow: 0px 0px 0 1px rgb(255, 255, 255);
            border-radius: 10px;
            padding: 0.5vh 1vh;
        }

        #main {
            height: 94vh;
            display: flex;
            align-items: center;
        }

        #content {
            width: 50vw;
            margin-left: 10vw;
        }

        #inner-card {
            margin-top:10px;
            z-index: 2;
            height: 90vh;
            width: 30vw;
            background-color: var(--basic);
            border-radius: 18px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        #inner-inner-card {
            height: 80vh;
            width: 24vw;
            background-color: var(--basic);
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

        #button {
            height: 5vh;
            width: 7vw;
            border-radius: 10px;
            font-size: 19px;
            color: var(--basic);
            font-weight: 700;
            border: 2px solid rgb(112, 111, 113);
            cursor: pointer;
        }

        .inputForms {
            display: flex;
            flex-direction: row;
            align-items: center;
            margin-top: 5px;
            margin-bottom: 10px;
        }

        #form_ac {
            font-size: 18px;
            font-weight: 600;
            width: 72vh;
            gap: 3vh;
            padding: 1vh 2vh;
            display: flex;
            align-items: center;
            color: white;
            background-color: var(--basic);
            border-radius: 20px;
            margin: 0 0 3vh 5vh;
        }

        #radio {
            font-size: 17px;
            font-weight: 600;
            display: flex;
            align-items: baseline;
            gap: 1vh;
            margin: 0 5vh 5vh 0;
        }

        .newWidth {
            text-indent: 1.5vh;
            width: 30%;
            font-size: 20px;
            border-radius: 20px;
        }
    </style>

</head>
<body>
    <div id="container">
        <div id="outer-card">
            <div id="title">
                Bank Management
            </div>
            <div id="links" class="mar-right">
                <a href="new">New</a>
                <a class="myLink" href="viewEmp.jsp">View</a>
                <a class="myLink" href="block">Block</a>
                <a class="myLink" href="unblock">Unblock</a>
                <a class="myLink" href="updateEmp.jsp">Update</a>
                <a class="myLink" href="deleteEmp.jsp">Delete</a>
                <a href="selectAllEmployee">All Employee</a>
            </div>
            <div id="links">
                <a id="user" href="update-profile">
                    ${name}
                </a>
                <a href="index.jsp">Logout</a>
            </div>
        </div>
        <div id="main">
            <div id="content">
                <h1 style="margin-bottom: 3vh;">
                    ${message}  ${name}
                </h1>
                <h2 style="margin-bottom: 2vh;">Welcome to <i>Bank Management System</i></h2>
                <h3 style="margin-bottom: 1vh;">Customer Management:</h3>
                <ul style="list-style-type: '&#x2192'; line-height:180%; margin-left: 3vh;">
                    <li>
                        <p style="margin-left: 1vh;"><i>Add </i> new Employee.</p>
                    </li>
                    <li>
                        <p style="margin-left: 1vh;"><i>View</i> details of Employee. </p>
                    </li>
                    <li>
                        <p style="margin-left: 1vh;"><i>Update </i> name/password.</p>
                    </li>
                    <li>
                        <p style="margin-left: 1vh;"> <i>Block/unblock </i>customer accounts.</p>
                    </li>
                    <li>
                        <p style="margin-left: 1vh;"> <i>Delete </i>customer accounts.</p>
                    </li>
                    <li>
                        <p style="margin-left: 1vh;"> <i>View All </i>Employees .</p>
                    </li>
                </ul>
            </div>
            <div id="inner-card">
                <div id="inner-inner-card">
                    <form action="empRegister" id="form" method="post">
                        <div>
                            <h2 style="text-align: center;margin-bottom: 4vh;">Add New Employee</h2>
                        </div>
                         <h4>Branch ID</h4>
                        <div class="inputForms">
                            <input type="number" pattern="[0-9]" name="branchId" placeholder="Branch Id" class="fg1" required>
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
                            <input style="margin-left:68px;" type="reset" value="Reset" id="button">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


</body>
</html>