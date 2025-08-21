<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
        
 </style>

</head>
<body>

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
                <a id="user" href="#">
                    Admin
                </a>
                <a href="index.jsp">Logout</a>
            </div>
        </div>


</body>
</html>