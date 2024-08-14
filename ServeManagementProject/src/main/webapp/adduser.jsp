<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.family.dao.FamilyDao"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>//adduserpage</title>
</head>
<body>

 <%@page import="com.family.dao.FamilyDao"%> 
<jsp:useBean id="u" class="com.family.bean.FamilyInput"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>   
<%  
int i=FamilyDao.insert(u);  
if(i>0){  
response.sendRedirect("adduser-success.jsp");  
}else{  
response.sendRedirect("adduser-error.jsp");  
}  
%>  
</body>
</html>