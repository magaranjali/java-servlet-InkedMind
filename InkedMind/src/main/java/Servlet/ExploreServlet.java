package Servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.explore;
import model.post;

@WebServlet("/Explore")
public class ExploreServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<explore> elist = new ArrayList<>();

        Connection conn = null;
        PreparedStatement sm = null;
        ResultSet rs = null;

        try {
            // Load JDBC driver
            Class.forName("com.mysql.jdbc.Driver");
            // Establish connection
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/InkedMind", "root", "");

            // Query to join post and user tables to get username along with post content
            String sql = "SELECT p.userid, p.content, u.username " +
                         "FROM post p " +
                         "JOIN user u ON p.userid = u.id";
            sm = conn.prepareStatement(sql);
            rs = sm.executeQuery();

            // Iterate through the result set and create post objects
            while (rs.next()) {
                int userid = rs.getInt("userid");
                String content = rs.getString("content");
                String username = rs.getString("username");

                // Create a post object and add it to the list
               explore explore = new explore();
               explore.setUsername(username);
               explore.setContent(content);
               elist.add(explore);
            }
            request.setAttribute("elist", elist);
            request.getRequestDispatcher("explore.jsp").forward(request, response);
            
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            // Clean up resources
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (sm != null) {
                try {
                    sm.close();
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

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Not used in this case
    }
}
