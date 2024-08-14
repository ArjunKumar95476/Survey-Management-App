<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Edit Form</title>
<style type="text/css">
body
{background:wheat;display: flex;justify-content: center;align-items: center;}
.editform
{padding: 10px 10px;}
form
{background:gray;padding:20px;border-radius:15px;color: white;text-shadow:1px 1px 1px black;box-shadow: 5px 5px 1px gray,-5px -5px 1px gray;}
form input
{padding: 10px 20px;margin: 5px 0px; border: none; outline: none; border-radius: 15px;}
</style>  
</head>  
<body>  
<%@page import="com.family.dao.FamilyDao,com.family.bean.FamilyInput"%>   
<%  
String id=request.getParameter("id");  
FamilyInput u=FamilyDao.selectById(Integer.parseInt(id)); 
%>  
<div class="editform">
<h1 style="text-align:center;">Update Your Data</h1>  
<form action="edituser.jsp" method="post">  
<input type="hidden" name="id" value="<%=u.getId() %>"/>  
<table>  
<tr><td>Enter Your Name :</td><td>  
<input type="text" name="yourname" value="<%=u.getYourname()%>"/></td></tr>    
<tr><td>Enter Your Age :</td><td>  
<input type="text" name="yourage" value="<%=u.getYourage()%>"/></td></tr>    
<tr><td>Enter Your Gender :</td><td>  
<input type="radio" name="gender" value="<%=u.getGender()%>"/> Male <input type="radio" name="gender" value="<%=u.getGender()%>"/> Female</td></tr>    
 <tr><td>Enter Your FatherName :</td><td>  
<input type="text" name="fathername" value="<%=u.getFathername()%>"/></td></tr> 
 <tr><td>Enter Your MotherName :</td><td>  
<input type="text" name="mothername" value="<%=u.getMothername()%>"/></td></tr> 
 <tr><td>How Many Sibling You Have :</td><td>  
<input type="text" name="sibling_number" value="<%=u.getSibling_number()%>"/></td></tr> 
 <tr><td>How Many Brother You Have :</td><td>  
<input type="text" name="brother_number" value="<%=u.getBrother_number()%>"/></td></tr> 
 <tr><td>How Many Sister You Have :</td><td>  
<input type="text" name="sister_number" value="<%=u.getSister_number()%>"/></td></tr> 
 <tr><td>Your Father Profession :</td><td>  
<input type="text" name="father_prof" value="<%=u.getFather_prof()%>"/></td></tr> 
 <tr><td>Your Mother Profession :</td><td>  
<input type="text" name="mother_prof" value="<%=u.getMother_prof()%>"/></td></tr> 
<tr><td>What You Do :</td><td>  
<select name="whatyoudo" style="width: 200px; height: 38px; border-radius: 15px; outline:none;">  
 <option>Study</option>  
 <option>Job</option>  
 <option>Nothing</option>    
</select>  
</td></tr>  
<tr><td colspan="2"><input type="submit" value="Save Your Update Data" style="background: blue; color:white;"/></td></tr>  
</table>  
</form>  
</div>
</body>  
</html>  