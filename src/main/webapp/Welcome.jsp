<%--
  Created by IntelliJ IDEA.
  User: Venera
  Date: 10/1/2024
  Time: 3:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome Page</title>
    <style>
        /* Apply background color with a gradient */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #4facfe, #00f2fe);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: white;
        }

        /* Style for the centered container */
        .container {
            background-color: rgba(255, 255, 255, 0.1); /* Semi-transparent background */
            padding: 40px;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1); /* Subtle shadow for depth */
        }

        h1 {
            font-size: 2.5em;
            margin-bottom: 20px;
        }

        /* Button design */
        .btn {
            padding: 10px 20px;
            background-color: #00c6ff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1.2em;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #0078d4; /* Change color on hover */
        }

    </style>
</head>
<body>
<div class="container">
    <h1>Welcome, User!</h1>
    <p>We're glad to have you here. Enjoy your experience!</p>
</div>
</body>
</html>

