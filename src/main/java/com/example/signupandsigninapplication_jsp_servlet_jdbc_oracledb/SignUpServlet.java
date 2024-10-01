package com.example.signupandsigninapplication_jsp_servlet_jdbc_oracledb;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet("/SignUpServlet")
public class SignUpServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private final String jdbcUrl = "jdbc:oracle:thin:@localhost:1521:XE";
    private final String jdbcUsername = "sys as sysdba";
    private final String jdbcPassword = "password";

    public SignUpServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("first_name");
        String lastName = request.getParameter("last_name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String contactNum = request.getParameter("contactNo");

        // Load Oracle JDBC Driver
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
        } catch (ClassNotFoundException e) {
            throw new ServletException("Oracle JDBC Driver not found", e);
        }

        String query = "INSERT INTO signup (FIRSTNAME, LASTNAME, EMAIL, PASSWORD, ADDRESS, CONTACTNO) VALUES (?, ?, ?, ?, ?, ?)";

        // Use try-with-resources to manage database resources
        try (Connection con = DriverManager.getConnection(jdbcUrl, jdbcUsername, jdbcPassword);
             PreparedStatement preparedStatement = con.prepareStatement(query)) {

            preparedStatement.setString(1, firstName);
            preparedStatement.setString(2, lastName);
            preparedStatement.setString(3, email);
            preparedStatement.setString(4, password);
            preparedStatement.setString(5, address);
            preparedStatement.setString(6, contactNum);

            int rowsAffected = preparedStatement.executeUpdate(); // Execute the update query

            // Check if the insertion was successful
            if (rowsAffected > 0) {
                request.getSession().setAttribute("first_name", firstName);
                response.sendRedirect("Welcome.jsp");
            } else {
                request.getRequestDispatcher("SignUp.jsp").forward(request, response);
            }

        } catch (SQLException e) {
            throw new ServletException("Database error occurred", e);
        }
    }
}
