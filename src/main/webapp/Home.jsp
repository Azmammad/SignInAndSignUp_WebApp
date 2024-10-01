<%--
  Created by IntelliJ IDEA.
  User: Venera
  Date: 10/1/2024
  Time: 3:53 PM
  To change this template use File | Settings | File Templates.
--%><%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Success</title>
    <style>
        /* Styling the page with a gradient background */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #00c6ff, #0072ff);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
        }

        /* Container for the message */
        .container {
            background-color: rgba(0, 0, 0, 0.5); /* Slightly transparent background */
            padding: 40px;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2); /* Shadow for depth */
        }

        /* Title styling */
        h1 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        /* Button styling */
        .btn {
            padding: 12px 25px;
            background-color: #00f2fe;
            color: black;
            border: none;
            border-radius: 5px;
            font-size: 1.2rem;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        /* Button hover effect */
        .btn:hover {
            background-color: #0078d4;
            color: white;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>User Logged in Successfully</h1>
    <p>Welcome back! You have successfully logged in to your account.</p>
</div>
</body>
</html>

