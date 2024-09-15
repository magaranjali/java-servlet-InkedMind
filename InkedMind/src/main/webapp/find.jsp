<%@page import="model.user"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>List of Users</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Username</th>
            <th>Email</th>
            <th>Status</th>
           
        </tr>

        <%
            ArrayList<user> ulist = (ArrayList<user>) request.getAttribute("ulist");
            for (user u : ulist) {
        %>
            <tr>
                <td><%= u.getId() %></td>
                <td><%= u.getUsername() %></td>
                <td><%= u.getEmail() %></td>
                <td><form action="Follow" method="post">
                <input type="hidden" name="id" value='<%=u.getId()%>' >
                <input type="submit" value="Follow"> </form> </td>
            </tr>
        <%
            }
        %>
    </table>

</body>
</html>