<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Family serve management project</title> 
<style type="text/css">
body
{
background: wheat;}
.divmain
{
display: flex;
flex-direction:column;
justify-content: center;
align-items: center;
gap:30px;
}
.uperpart h1
{
font-size: 40px;
background: orange;
padding: 10px 70px;
}
.uperpart h3
{
font-size: 30px;
}
.uperpart,.lowerpart, p
{
font-size: 20px;
}
.uperpart h1,p,h3
{
 text-shadow: 1px 1px 1px white;
 color: black;
 text-align: center;
}
.lowerpart
{
display: flex;
flex-direction:column;
justify-content: center;
align-items: center;
gap:20px;
}
.lowerpart a
{
width:50%;
background: blue;
padding: 8px 70px;
text-decoration: none;
text-align: center;
color:white;
}
</style> 
</head>  
<body> 
<div class="divmain">
<div class="uperpart">
<h1>! Family Serve Management !</h1> 
<h3>Serve of Family in 2022-23 by Indian Government </h3>
<p>This Serve form will be filled by Only Student , They Will enter Their family <br>details.Because They have educated more compare to any other member of Family <br>!Government of India Decided for serve 2022-23 of every family.Prime Minister of India <span style="color:red;">Shri Narendra Modi</span> ,<br> Decalare  a report to his lower ministry for serve of every family in India. </p>
</div>
<div class="lowerpart">
<p>You can see serve of some family and you can also Give your family details to Government of India By Below mention link.. </p>
<a href="adduserform.jsp">Click here for Serve Your Family</a>  
<a href="viewusers.jsp">Click here for seeing other family status</a>
</div> 
 </div> 
</body>  
</html>  