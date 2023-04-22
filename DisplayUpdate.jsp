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
Class.forName("com.mysql.cj.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/assignment","root","root");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from assign");
while(rs.next())
{
	System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));

}

%>

<a href="Home.jsp">Home</a>




</body>
</html>