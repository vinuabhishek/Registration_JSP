<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import= "java.io.IOException" %>
   <%@ page import= "java.sql.*" %>
   <%@ page import ="java.io.PrintWriter" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 

String idd = request.getParameter("id");

try{

Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/assignment","root","root");
		Statement st = con.createStatement();
		String sql="select * from assign where id="+idd;
		ResultSet rs = st.executeQuery(sql);
		while(rs.next())
	{
		out.write(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));
		
		}
	
}
catch(Exception e){
	e.printStackTrace();
}

%>





</body>
</html>