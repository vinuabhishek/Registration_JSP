<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
form{
	background-color: #30143e;
    padding-left: 100px;
}
label{
font-size:30px;
color:#fccd92;
}
button, #a{
background-color:#fccd92;
color:#30143e;
font-size: 30px;
border: none;
}
</style>
</head>
<body>

<fieldset>
<legend>Sign-Up</legend>
<form action="CodeReg.jsp" method="post" >
<br>
<label>ID       :</label> <br><input type="number" name="id"><br><br>
<label>Name     :</label> <br><input type="text" name="name"><br><br>
<label>Email ID :</label> <br><input type="email" name="email"><br><br>
<label>Password :</label> <br><input type="password" name="pwd"><br><br>
<label>Confirm Password:</label> <br><input type="password" name="cpass"><br><br>
<label>Phone no :</label> <br><input type="number" name="phno"><br><br>
<label>City     :</label> <br><input type="text" name="city"><br>
<br><br>
 <input id="a" type="submit" value="SUBMIT"><br><br>


</form>

</fieldset>


</body>
</html>