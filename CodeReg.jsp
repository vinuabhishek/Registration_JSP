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
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String pass = request.getParameter("pwd");
	String cpass= request.getParameter("cpass");
	String phno = request.getParameter("phno");
	String city = request.getParameter("city");
	
	try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/assignment","root","root");
	PreparedStatement ps= con.prepareStatement("insert into assign values(?,?,?,?,?,?,?)");
	ps.setInt(1, Integer.parseInt(id));
	ps.setString(2, name);
	ps.setString(3,email);
	ps.setString(4, pass);
	ps.setString(5, cpass);
	ps.setInt(6, Integer.parseInt(phno));
	ps.setString(7, city);
	
	if(pass.equals(cpass)){
		ps.executeUpdate();
		RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
		rd.forward(request, response);
	}
	else{
		PrintWriter o =  response.getWriter();
		o.write("Incorrect Password");
		
		RequestDispatcher rd = request.getRequestDispatcher("Registration.jsp");
		rd.include(request, response);
	}
	
	}
	
	catch(Exception e){
		e.printStackTrace();
	}
	
	
%>




</body>
</html>