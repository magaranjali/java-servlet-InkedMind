package Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Write")
public class WriteServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("write.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        int userid = (int) session.getAttribute("userid");
        String content = request.getParameter("description");
        String type=request.getParameter("action");

        Connection conn = null;
        PreparedStatement insertUserStmt = null;

        try {
            // Load the JDBC driver
            Class.forName("com.mysql.jdbc.Driver");
            // Establish the connection
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/InkedMind", "root", "");

            // Prepare the SQL statement
            if (type.equals("post")) {
            	String insertSQL = "INSERT INTO Post (userid, content) VALUES (?, ?)";
                insertUserStmt = conn.prepareStatement(insertSQL);
                insertUserStmt.setInt(1, userid);
                insertUserStmt.setString(2, content);

                // Execute the insert
                int rowsInserted = insertUserStmt.executeUpdate();

                // Check if the insertion was successful
                if (rowsInserted > 0) {
                   request.getRequestDispatcher("profile.jsp").forward(request, response);
                   } else {
                    request.setAttribute("errorMessage", "Failed to save the post.");
                    request.getRequestDispatcher("write.jsp").forward(request, response);
                }
            }else {
            	
            	String insertSQL = "INSERT INTO Saved (userid, content) VALUES (?, ?)";
                insertUserStmt = conn.prepareStatement(insertSQL);
                insertUserStmt.setInt(1, userid);
                insertUserStmt.setString(2, content);

                // Execute the insert
                int rowsInserted = insertUserStmt.executeUpdate();

                // Check if the insertion was successful
                if (rowsInserted > 0) {
                   request.getRequestDispatcher("profile.jsp").forward(request, response);
                   } else {
                    request.setAttribute("errorMessage", "Failed to save the post.");
                    request.getRequestDispatcher("write.jsp").forward(request, response);
                }
            }
            
            
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Database error: " + e.getMessage());
            request.getRequestDispatcher("write.jsp").forward(request, response);
        } finally {
            // Clean up resources
            if (insertUserStmt != null) {
                try {
                    insertUserStmt.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
