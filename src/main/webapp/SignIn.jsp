<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Login Form</title>
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

    .login-form-container {
      background-color: #ffffff;
      padding: 40px;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      width: 350px;
      text-align: center;
    }

    h2 {
      color: #333;
      margin-bottom: 20px;
    }

    table {
      width: 100%;
      margin-bottom: 20px;
    }

    td {
      padding: 10px;
      text-align: left;
    }

    input[type="text"], input[type="password"] {
      width: 100%;
      padding: 12px;
      border: 1px solid #ccc;
      border-radius: 5px;
      margin-top: 5px;
    }

    input[type="submit"] {
      width: 100%;
      padding: 12px;
      background-color: #007bff;
      color: white;
      border: none;
      border-radius: 5px;
      font-size: 16px;
      cursor: pointer;
    }

    input[type="submit"]:hover {
      background-color: #0056b3;
    }

    .forgot-password {
      margin-top: 10px;
    }

    .forgot-password a {
      text-decoration: none;
      color: #007bff;
    }

    .forgot-password a:hover {
      text-decoration: underline;
    }

  </style>
</head>
<body>
<div class="login-form-container">
  <h2>Login</h2>
  <form action="SignInServlet" method="post">
    <table>
      <tr>
        <td>Email</td>
        <td><input type="text" name="email" placeholder="Enter your email" required></td>
      </tr>
      <tr>
        <td>Password</td>
        <td><input type="password" name="password" placeholder="Enter your password" required></td>
      </tr>
    </table>
    <input type="submit" value="Login">
  </form>
<%--  <div class="forgot-password">
    <a href="#">Forgot Password?</a>
  </div>--%>
</div>
</body>
</html>
