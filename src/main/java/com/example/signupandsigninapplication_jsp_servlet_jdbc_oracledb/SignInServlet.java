package com.example.signupandsigninapplication_jsp_servlet_jdbc_oracledb;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet("/SignInServlet")
public class SignInServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private final String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:XE";
    private final String jdbcUsername = "sys as sysdba";
    private final String jdbcPassword = "password";

    public SignInServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Load the Oracle JDBC Driver
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new ServletException("Oracle JDBC Driver not found.", e);
        }

        String query = "SELECT * FROM signup WHERE EMAIL = ? AND PASSWORD = ?";

        // Use try-with-resources to manage resources automatically
        try (Connection con = DriverManager.getConnection(jdbcUrl, jdbcUsername, jdbcPassword);
             PreparedStatement preparedStatement = con.prepareStatement(query)) {

            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);

            try (ResultSet rs = preparedStatement.executeQuery()) {
                if (rs.next()) {
                    // Successful login
                    request.getSession().setAttribute("email", email);
                    response.sendRedirect("Home.jsp");
                } else {
                    // Invalid login, forward to sign-in page
                    request.getRequestDispatcher("SignIn.jsp").forward(request, response);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            throw new ServletException("Database error occurred during sign-in.", e);
        }
    }
}
