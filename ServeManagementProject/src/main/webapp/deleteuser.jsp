<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>deleted//</title>
</head>
<body>
<%@page import="com.family.dao.FamilyDao"%>  
<jsp:useBean id="u" class="com.family.bean.FamilyInput"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
FamilyDao.delete(u);  
response.sendRedirect("viewusers.jsp");  
%>  
</body>
</html>