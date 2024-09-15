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
import javax.servlet.http.HttpSession;

import model.user;


@WebServlet("/Follow")
public class FollowServlet extends HttpServlet {
	
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
		int followedid=Integer.parseInt(request.getParameter("id"));
		HttpSession session=request.getSession(false);
		int userid=(int) session.getAttribute("userid");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=  DriverManager.getConnection("jdbc:mysql://localhost:3306/InkedMind","root", "");
			
			String checkfollow="select * from FollowStatus where userid=? and followerid=? ";
			PreparedStatement ps= conn.prepareStatement(checkfollow);
			ps.setInt(1, followedid);
			ps.setInt(2, userid);
			
			ResultSet rs1= ps.executeQuery();
			if(rs1.next()) {
				 ArrayList<user> ulist=new ArrayList<>();	
		          
					String sql1= "select * from user";
					PreparedStatement sm= conn.prepareStatement(sql1);
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
			}else {
				
			
			String sql="insert into FollowStatus(userid, followerid ) values (?,?)";	

            PreparedStatement pstm= conn.prepareStatement(sql);
            pstm.setInt(1, followedid); //This represents first question mark
            pstm.setInt(2, userid);
                  
            pstm.execute();
			}
             
            ArrayList<user> ulist=new ArrayList<>();	
          
			String sql1= "select * from user";
			PreparedStatement sm= conn.prepareStatement(sql1);
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
		   

            	
		}catch(ClassNotFoundException |SQLException e){
			e.printStackTrace();
			
		}
	}
	

}
