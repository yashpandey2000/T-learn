<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>T-Learn</title>

<style type="text/css">

 body {

	background-image: linear-gradient( rgba(0, 0, 0, 0.600) ,  rgba(0, 0, 0, 0.600)),
		url('img/book.jpg');
   background-position: center;
   background-size: 1550px;
   height: 752px;
   background-repeat: no-repeat;
}

h1{
font-family: cursive;;
}

</style>


</head>
<body >

<div id="magic">

<div class="header" >
<%@include file= "Header.jsp"%>

 <form action="<%=ORSView.WELCOME_CTL%>" >
            
            
            <br><br><br><br><br><br><br><br><br><br><br>
            
            
            <h1 align="center">
            <font size="10px" color="white" style="font-size: 70px">Welcome To T-Learn</font>
            </h1>

<div class="footer">
<%@include file="Footer.jsp" %>
</div>

<br><br><br><br><br><br><br><br><br><br><br><br>
</form></div></div>
</body>
</html>