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

import model.user;


@WebServlet("/Find")
public class FindServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
ArrayList<user> ulist=new ArrayList<>();	
try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=  DriverManager.getConnection("jdbc:mysql://localhost:3306/InkedMind","root", "");
		String sql= "select * from user";
		PreparedStatement sm= conn.prepareStatement(sql);
		ResultSet rs= sm.executeQuery();
		while( rs.next()) {
			int id = rs.getInt("id");
            String username = rs.getString("username");
            String email = rs.getString("email");

            
            // Create a User object and add it to the list
            user user = new user();
            user.setId(id);
			user.setUsername(username);
			user.setEmail(email);
            ulist.add(user);
		}
		request.setAttribute("ulist", ulist);
		request.getRequestDispatcher("find.jsp").forward(request, response);
}catch(ClassNotFoundException |SQLException e) {
			e.printStackTrace();
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
