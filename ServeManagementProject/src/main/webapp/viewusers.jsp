<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>  
  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>View Users</title>  
<style type="text/css">
body{background-color: wheat;}
th
{
padding: 8px 0px;
background: green;
color: white;}
th:hover
{
background: lime;
color: white;
text-shadow: 1px 1px 2px black;
transition:0.6s;}
tr,td{
text-align: center;
padding: 8px 0px; background-color: orange;color: black;text-shadow: 1px 1px 1px black; font-size: 20px;}
h1,h5
{
text-align: center;}
.tabledata
{
display:flex;
justify-content: center;}
.edit
{
background: yellowgreen;}.edit,a{text-decoration: none;text-shadow: 1px 1px 2px black; color: white;} .edit:hover{background: black;color:white;}
.delete
{
background: red;}.delete:hover{background: darkred;color: white;}
.button{display:flex;
justify-content: center;gap:40px; }.servebutton{color:blue; padding-top: 20px;}.servebutton:hover{color:red; }
</style>
</head>  
<body> 
<nav><ul><li style="list-style: none;"><a href="logout.jsp" style="color:red;">LogOut</a></ul></nav> 
 <h1>Report of some Family via of Serve Report 2022-23</h1>
 <h5>This is the list of Family , In which we can know that which family has how many child and their profession
 </h5>
  <div class="button">
  <h3>For Serve Your Family Click Side Button</h3>
<a href="adduserform.jsp" class="servebutton">Click Here.</a></div>
<%@page import="com.family.dao.FamilyDao,com.family.bean.*,java.util.*"%>   
  
<%  
List<FamilyInput> list=FamilyDao.selectAll();  
request.setAttribute("list",list);  
%>   
<div class="tabledata"> 
<table border="1" width="90%">  
<tr>
<th>Id</th>
<th>Name</th>
<th>Age</th>  
<th>Gender</th>
<th>FatherName</th>
<th>MotherName</th>
<th>Sibling</th>
<th>Brother</th>
<th>Sister</th>
<th>Father Profession</th>
<th>Mother Profession</th>
<th>What You Do</th>
<th colspan="2">Modify Operation</th>
</tr>  
 
<c:forEach items="${list}" var="u">  
<tr>
<td><c:out value="${u.getId()}"></c:out></td>
<td><c:out value="${u.getYourname()}"></c:out></td>  
<td><c:out value="${u.getYourage()}"></c:out></td>
<td><c:out value="${u.getGender()}"></c:out></td>
<td><c:out value="${u.getFathername()}"></c:out></td>
<td><c:out value="${u.getMothername()}"></c:out></td>
<td><c:out value="${u.getSibling_number()}"></c:out></td>
<td><c:out value="${u.getBrother_number()}"></c:out></td>
<td><c:out value="${u.getSister_number()}"></c:out></td>
<td><c:out value="${u.getFather_prof()}"></c:out></td>
<td><c:out value="${u.getMother_prof()}"></c:out></td>
<td><c:out value="${u.getWhatyoudo()}"></c:out></td>
 
<td class="edit"><a href="editform.jsp?id=<c:out value='${u.getId()}'/>" >Edit</a></td>  
<td class="delete"><a href="#?id=<c:out value='${u.getId()}'/>">Delete</a></td>
<%-- Put deleteuser.jsp the place of # in delete section --%>
</tr>  
</c:forEach>  
</table>  
</div>
  
</body>  
</html>  