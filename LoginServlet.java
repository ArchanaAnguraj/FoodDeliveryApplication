package com.tapfoods.controller;

import com.tapfoods.dbutils.DbUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Connection con = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            con = DbUtils.myConnect();
            String sql = "SELECT * FROM user WHERE email = ? AND password = ?";
            statement = con.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, password);

            resultSet = statement.executeQuery();

            if (resultSet.next()) {
                response.sendRedirect("home.jsp");
            } else {
                response.sendRedirect("signup.jsp");
            }

        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred during login: " + e.getMessage());
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().println("An unexpected error occurred: " + e.getMessage());
        } finally {
            // Close resources to prevent memory leaks
            try {
                if (resultSet != null) 
                	resultSet.close();
                if (statement != null)
                	statement.close();
                if (con != null) 
                	con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
