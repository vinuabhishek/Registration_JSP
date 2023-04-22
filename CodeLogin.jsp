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

String email = request.getParameter("email");
String pass = request.getParameter("pwd");

try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/assignment","root","root");
	PreparedStatement ps= con.prepareStatement("select * from assign where email=? and password=?");
	
	ps.setString(1, email);
	ps.setString(2, pass);
	
	ResultSet rs = ps.executeQuery();
	while(rs.next()) {
		RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
		rd.forward(request, response);
	}

}
catch(Exception e) {
	e.printStackTrace();
	
}
response.setContentType("text/html");
PrintWriter o = response.getWriter();
o.print("Invalid password or email id ");
RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
rd.include(request, response);


%>

</body>
</html>