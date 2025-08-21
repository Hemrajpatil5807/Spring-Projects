<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Page</title>

<style type="text/css">

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
                <a href="employee.jsp">New</a>
                <a class="myLink" href="viewUser.jsp">View</a>
                <a class="myLink" href="updateUser.jsp">Update</a>
                <a class="myLink" href="deleteUser.jsp">Delete</a>
                <a class="myLink" href="empTransaction.jsp">Transfer</a>
                <a class="myLink" href="credit.jsp">Credit</a>
                <a class="myLink" href="debit.jsp">Debit</a>
                <a href="selectAllUser">All Customers</a>
            </div>
            <div id="links">
                <a id="user" href="updateEmp.jsp">
                    ${employee}
                </a>
                <a href="logout">Logout</a>
            </div>
        </div>

</body>
</html>