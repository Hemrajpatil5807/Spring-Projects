<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer Page</title>

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
            padding-left: 10px;
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
               SBI Bank 
            </div>
            <div id="links" class="mar-right">
                <a href="getUser?accountNo=${uaccountNo}">Profile</a>
                <a class="myLink" href="viewUser.jsp">View Details</a>
                <a class="myLink" href="block">Block</a>
                <a class="myLink" href="unblock">Unblock</a>
                <a class="myLink" href="transaction.jsp">Transfer</a>
                <a class="myLink" href="balance?accountNo=${uaccountNo}">Balance</a>
                <a href="selectTransaction">All Transaction</a>
            </div>
            <div id="links">
                <a id="user" href="updateUser.jsp">
                    ${user}
                </a>
                <a href="logout">Logout</a>
            </div>
        </div>
        <div id="main">
            <div id="content">
                <h1 style="margin-bottom: 3vh;">
                    ${message}  ${user}
                </h1>
                <h2 style="margin-bottom: 2vh;">Welcome to <i>SBI Bank </i></h2>
                <h3 style="margin-bottom: 1vh;">Our Services:</h3>
                <ul style="list-style-type: '&#x2192'; line-height:180%; margin-left: 3vh;">
                    <li>
                        <p style="margin-left: 1vh;"><i>View</i> details. </p>
                    </li>
                    <li>
                        <p style="margin-left: 1vh;"><i>Update </i> name/password.</p>
                    </li>
                    <li>
                        <p style="margin-left: 1vh;"> <i>Block/unblock </i>Account.</p>
                    </li>
                    <li>
                        <p style="margin-left: 1vh;"> <i>Delete </i>Account.</p>
                    </li>
                    <li>
                        <p style="margin-left: 1vh;"> <i>View All </i>Transaction .</p>
                    </li>
                </ul>
            </div>
        </div>
  </div>




</body>
</html>