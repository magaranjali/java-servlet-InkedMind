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
import javax.servlet.http.HttpSession;

@WebServlet("/Profile")
public class ProfileServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        int userid = (int) session.getAttribute("userid");
        String username = (String) session.getAttribute("user");
        request.setAttribute("user", username);

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/InkedMind", "root", "");

            // Query to get the follower count
            String sqlFollowers = "select count(*) as followers from FollowStatus where userid=? ";
            // Query to get the following count
            String sqlFollowing = "select count(userid) as following from FollowStatus where followerid=? ";

            // Get following count
            PreparedStatement sm = conn.prepareStatement(sqlFollowing);
            sm.setInt(1, userid);
            ResultSet rsFollowing = sm.executeQuery();
            int followingCount = 0;
            if (rsFollowing.next()) {
                followingCount = rsFollowing.getInt("following");
            }

            // Get follower count
            PreparedStatement tm = conn.prepareStatement(sqlFollowers);
            tm.setInt(1, userid);
            ResultSet rsFollowers = tm.executeQuery();
            int followerCount = 0;
            if (rsFollowers.next()) {
                followerCount = rsFollowers.getInt("followers");
            }

            // Set both follower and following counts as request attributes
            request.setAttribute("followercount", followerCount);
            request.setAttribute("followingcount", followingCount);

            // Forward the request to profile.jsp
            request.getRequestDispatcher("profile.jsp").forward(request, response);

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}