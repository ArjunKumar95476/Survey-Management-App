<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.family.dao.FamilyDao,java.sql.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login/serve family management </title>
<style type="text/css">

body{

display: flex;
flex-direction: column;
justify-content: center;
align-items: center;
gap:60px;
}
form
{
display: flex;
flex-direction: column;
justify-content: center;
align-items: center;
gap:20px;
}
</style>
</head>
<body>
<%
boolean flag=false;
String textMobile=request.getParameter("textName");
Connection conn=FamilyDao.getConnection();
PreparedStatement ps=conn.prepareStatement("select mobilenumber from familyregister");
ResultSet rs=ps.executeQuery();
while(rs.next())
{
	if(rs.getString(1).equals(textMobile))
	{
	%>
	<jsp:forward page="index.jsp"></jsp:forward>
	<% 
	}
	else{flag=true;}
}

if(flag){out.println("<h4 style='color:red;'>Login Failed! You have not register before............</h4>");}
	
%>
<h1>Prime Minister Family Serve Scheme 2022-23</h1>
<h2>Login Here!</h2>
<form action="login.jsp">
<div class="name">
<label> Mobile Number</label>
<div class="textName">
<input type="text" style="width: 500px; padding: 10px 30px; margin: 8px 0; border-radius: 15px; outline:none;" name="textName">
</div>
</div>
<div class="submit">
<input type="submit" style="width: 100px; padding: 10px 30px; margin: 8px 0; border-radius: 15px; outline:none; border:none; background: blue;color:white;" name="textName" value="Login">
</div>
</form>
</body>
</html>