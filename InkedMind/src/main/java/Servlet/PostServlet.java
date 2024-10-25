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


@WebServlet("/Post")
public class PostServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response, PreparedStatement insertUserStmt) throws ServletException, IOException {
		 HttpSession session = request.getSession(false);
	     int userid = (int) session.getAttribute("userid");
	     String content = request.getParameter("description");
	
	   try {
		   Class.forName("com.mysql.jdbc.Driver");
		   Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/InkedMind", "root", "");
	  
		   String insertSQL = "INSERT INTO post (userid, content) VALUES (?, ?)";
           insertUserStmt = conn.prepareStatement(insertSQL);
           insertUserStmt.setInt(1, userid);
           insertUserStmt.setString(2, content);
	   } catch (ClassNotFoundException | SQLException e) {
           e.printStackTrace();
	}

}
}
