<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sign Up and Sign In</title>
    <style type="text/css">
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .form-container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h1 {
            color: #333;
            margin-bottom: 30px;
        }

        .form-container form {
            margin-bottom: 20px;
        }

        input[type="submit"] {
            font-size: 18pt;
            height: 50px;
            width: 220px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div class="form-container">
    <h1>Sign Up and Sign In</h1>
    <form action="SignUp.jsp">
        <input type="submit" value="Sign Up">
    </form>
    <form action="SignIn.jsp">
        <input type="submit" value="Sign In">
    </form>
</div>
</body>
</html>
