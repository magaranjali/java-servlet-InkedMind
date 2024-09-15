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


@WebServlet("/Login")
public class LoginServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("login.jsp").forward(request, response); // page redirects
		
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=  DriverManager.getConnection("jdbc:mysql://localhost:3306/InkedMind","root", "");
		
		String sql="select * from user where username=? and password=?";
		PreparedStatement pstm = conn.prepareStatement(sql);
		pstm.setString(1, username);
		pstm.setString(2, password);
		
		ResultSet rs=  pstm.executeQuery();
		
		if(rs.next())
		{
			int userid=rs.getInt("id");
			HttpSession session=request.getSession();
			session.setAttribute("userid", userid );
			session.setAttribute("user", username);
			session.setMaxInactiveInterval(300);
			request.setAttribute("user", username);
			request.getRequestDispatcher("home.jsp").forward(request, response);  // redirect to homepage
		}
		else
		{
			// failed login, redirect to login page with error message
			request.setAttribute("error", "Username/Password INCORRECT!");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
		
		
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}

}
