<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import= "java.io.*" %>
   <%@ page import= "java.sql.*" %>
   <%@ page import= "java.util.Scanner" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%

String idd= request.getParameter("id");
String name = request.getParameter("name");
String city = request.getParameter("city");
try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/assignment","root","root");
String sql = "update assign set name=?, city=? where id="+idd;

PreparedStatement ps= con.prepareStatement(sql);


ps.setString(1, name);
ps.setString(2, city);

ps.executeUpdate();
out.write("Update Successful ");
RequestDispatcher rd = request.getRequestDispatcher("DisplayUpdate.jsp");
rd.forward(request, response);





}
catch(Exception e) {
	e.printStackTrace();
	
}
//response.setContentType("text/html");
//PrintWriter o = response.getWriter();
//o.print("Invalid id ");
//RequestDispatcher rd = request.getRequestDispatcher("Updated.jsp");
//rd.include(request, response);




%>


</body>
</html>