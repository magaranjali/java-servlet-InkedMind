package Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Signup")
public class SignupServlet extends HttpServlet {
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("signup.jsp").forward(request, response);
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        Connection conn = null;
        PreparedStatement checkEmailStmt = null;
        PreparedStatement insertUserStmt = null;
        ResultSet rs = null;
        
        try {
            // Load the MySQL driver
            Class.forName("com.mysql.jdbc.Driver");
            
            // Establish connection to the database
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/InkedMind", "root", "");
            
            // SQL query to check if the email already exists
            String checkEmailSQL = "SELECT * FROM user WHERE email = ?";
            checkEmailStmt = conn.prepareStatement(checkEmailSQL);
            checkEmailStmt.setString(1, email);
            
            rs = checkEmailStmt.executeQuery();
            
            // If email exists, show an error message
            if (rs.next()) {
                request.setAttribute("error", "Email already in use");
                request.getRequestDispatcher("signup.jsp").forward(request, response);
            } else {
                // SQL query to insert the new user
                String insertSQL = "INSERT INTO user (email, username, password) VALUES (?, ?, ?)";
                insertUserStmt = conn.prepareStatement(insertSQL);
                insertUserStmt.setString(1, email);
                insertUserStmt.setString(2, username);
                insertUserStmt.setString(3, password);
                
                // Execute the insert statement
                insertUserStmt.executeUpdate();
                
                // Notify the user of successful account creation
                request.setAttribute("notify", "Account created successfully! Please login.");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
            
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            // Close all resources to avoid memory leaks
            try {
                if (rs != null) rs.close();
                if (checkEmailStmt != null) checkEmailStmt.close();
                if (insertUserStmt != null) insertUserStmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}