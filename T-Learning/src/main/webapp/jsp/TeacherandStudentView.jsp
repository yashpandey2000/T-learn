<%@page import="in.co.tlearn.ctl.ORSView"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
href="<%=ORSView.APP_CONTEXT%>/css/style.css">

<style type="text/css">

.row, .container-fluid {
margin-left: 0px!important;
margin-right: 0px!important;
}

 body {

	background-image: linear-gradient( rgba(0, 0, 0, 0.600) ,  rgba(0, 0, 0, 0.600)),
		url('img/book.jpg');
   background-position: center;
   background-size: 1550px;
   height:752px;
   background-repeat: no-repeat;
}



</style>


</head>
<body>
 <%@include file="Header.jsp"%> 

<br><br>
<br><br>
<br><br>
<br>

 <div class="col-md-4"> 
 <div class="col-md-4">
  <div class="col-md-4"></div></div></div>
  <center>
<div class="row">
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="text-center default-text text-primary pb-2"><u>SignUp As Student</u></h5>
        <p class="card-text">Education can open our eyes and expand are minds unlike anything else. It allows us to continually reshape how we see the world, leading to an improved and more well-rounded life. And it all starts with being a student! So, Lets go with T-learn (a learning platform)</p>
        <a href="<%=ORSView.STUDENT_REGISTRATION_CTL%>" class="btn btn-primary">SignUp</a>
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body">
        <h5 class="text-center default-text text-primary pb-2"><U>SignUp As Teacher</U></h5>
        <p class="card-text"> Teachers are always looking for ways to improve themselves. They are searching for better ways to reach their students.
        Teachers are one of the most important beings on Earth as they help mold the personality of students and guide them in the right direction for future life.
        </p>
        <a href="<%=ORSView.TEACHER_REGISTRATION_CTL%>" class="btn btn-primary">SignUp</a>
      </div>
    </div>
  </div>
</div>

</center>

<br><br>
<%-- <%@include file="Footer.jsp"%> --%>
</body>
</html>