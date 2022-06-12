
<%@page import="in.co.tlearn.bean.RoleBean"%>
<%@page import="in.co.tlearn.ctl.LoginCtl"%>
<%@page import="in.co.tlearn.bean.UserBean"%>
<%@page import="in.co.tlearn.ctl.ORSView"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Insert title here</title>


<link rel="stylesheet"
href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
crossorigin="anonymous">

<link rel="stylesheet"
href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>


<style type="text/css">

.header {
   position: relative;
   width: 100%;
}

</style>

</head>
<body>

<%
UserBean userDto = (UserBean) session.getAttribute("user");
boolean userLoggedIn = userDto != null;
String welcomeMsg ="Hi, ";
if (userLoggedIn) {
String role = (String) session.getAttribute("role");
welcomeMsg += userDto.getFirstname() + " (" + role + ")";
} else {
welcomeMsg += "Guest";
}
%>

<div class="header"  style="background-color:#000000;">

<nav class= "navbar navbar-expand-lg">

<%if(userDto==null){%>
<a class="navbar-brand" href="index.jsp" >

<% }else if(userDto!=null){ %>
	
<a class="navbar-brand" href="<%=ORSView.MAIN_CTL%>" >

<%}%>

<img src="<%=ORSView.APP_CONTEXT%>/img/cool.png" width="130px" height="40px"></a>

<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
<span class="navbar-toggler-icon">
 <i class="fas fa-bars" style="color:#fff; font-size:28px;"></i>
</span>
</button>

<div class="collapse navbar-collapse" id="navbarNav">
<ul class="nav navbar-nav ml-auto">
<a class="nav-link" href="#"><span class="sr-only">(current)</span></a>


<%
if(userLoggedIn){
%>

<%
if(userDto.getRoleid()==RoleBean.student){
%>

 <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="<%=ORSView.MAIN_CTL%>"><i
class="fa fa-fw fa-home"></i>Home</a>
        </li>
        

<li class="nav-item dropdown" style="padding-left: 5px"><a
class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
role="button" data-toggle="dropdown" aria-haspopup="true"
aria-expanded="false"> <font style="color: white;">Course
</font></a>

<div class="dropdown-menu" aria-labelledby="navbarDropdown">

 <a class="dropdown-item"
href="<%=ORSView.COURSE_LIST_CTL%>"><i
class="fas fa-sort-amount-down"></i>Course List </a>
</div></li>

 <li class="nav-item">
 <a class="nav-link" href="<%=ORSView.WELCOME_CTL2%>"><font style="color: white;">My Dashboard</font></a>
 </li>
          
 <%}} %> 
 
         
<%
if(userLoggedIn){
%>
<%
if(userDto.getRoleid()==RoleBean.Teacher){
%>


 <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="<%=ORSView.MAIN_CTL%>"><i
class="fa fa-fw fa-home"></i>Home</a>
        </li>
        

<li class="nav-item dropdown" style="padding-left: 5px"><a
class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
role="button" data-toggle="dropdown" aria-haspopup="true"
aria-expanded="false"> <font style="color: white;">Course
</font></a>

<div class="dropdown-menu" aria-labelledby="navbarDropdown">
<a class="dropdown-item" href="<%=ORSView.COURSE_CTL%>"><i
class="fas fa-book-open"></i>Add Course</a> <a class="dropdown-item"
href="<%=ORSView.COURSE_LIST_CTL%>"><i
class="fas fa-sort-amount-down"></i>Course List </a>
</div></li>

 <li class="nav-item">
 <a class="nav-link" href="<%=ORSView.WELCOME_CTL%>"><font style="color: white;">My Dashboard</font></a>
 </li>
<%}}%>

<%
if(userLoggedIn){
%>

<%
 if(userDto.getRoleid() == RoleBean.admin){
%>

<li class="nav-item dropdown" style="padding-left: 5xp;"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
role="button" data-toggle="dropdown" aria-haspopup="true"
aria-expanded="false"> <font style="color: white;">User</font></a>

<div class="dropdown-menu" aria-labelledby="navbarDropdown">
<a class="dropdown-item" href="<%=ORSView.USER_CTL%>"><i
class="fas fa-user-circle"></i>Add User</a> <a class="dropdown-item"
href="<%=ORSView.USER_LIST_CTL%>"><i
class="fas fa-user-friends"></i>User List</a>
</div></li>


<li class="nav-item dropdown" style="padding-left: 5px"><a
class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
role="button" data-toggle="dropdown" aria-haspopup="true"
aria-expanded="false"> <font style="color: white;">Role</font>
</a>

<div class="dropdown-menu" aria-labelledby="navbarDropdown">
<a class="dropdown-item" href="<%=ORSView.ROLE_CTL%>"><i
class="fas fa-user-tie"></i>Add Role</a> <a class="dropdown-item"
href="<%=ORSView.ROLE_LIST_CTL%>"><i
class="fas fa-user-friends"></i>Role List</a>
</div></li>



<li class="nav-item dropdown" style="padding-left: 5px"><a
class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
role="button" data-toggle="dropdown" aria-haspopup="true"
aria-expanded="false"> <font style="color: white;">Course
</font></a>

<div class="dropdown-menu" aria-labelledby="navbarDropdown">
<a class="dropdown-item" href="<%=ORSView.COURSE_CTL%>"><i
class="fas fa-book-open"></i>Add Course</a> <a class="dropdown-item"
href="<%=ORSView.COURSE_LIST_CTL%>"><i
class="fas fa-sort-amount-down"></i>Course List </a>
</div></li>


<li class="nav-item dropdown" style="padding-left: 5px"><a
class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
role="button" data-toggle="dropdown" aria-haspopup="true"
aria-expanded="false"> <font style="color: white;">Student</font>
</a>

<div class="dropdown-menu" aria-labelledby="navbarDropdown">
<a class="dropdown-item" href="<%=ORSView.STUDENT_CTL%>"><i
class="far fa-user-circle"></i>Add Student</a> <a
class="dropdown-item" href="<%=ORSView.STUDENT_LIST_CTL%>"><i
class="fas fa-users"></i>Student List</a>
</div></li>

<li class="nav-item dropdown" style="padding-left: 5px"><a
class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
role="button" data-toggle="dropdown" aria-haspopup="true"
aria-expanded="false"> <font style="color: white;">Faculty
</font></a>

<div class="dropdown-menu" aria-labelledby="navbarDropdown">
<a class="dropdown-item" href="<%=ORSView.FACULTY_CTL%>"><i
class="fas fa-user-tie"></i>Add Faculty</a> <a class="dropdown-item"
href="<%=ORSView.FACULTY_LIST_CTL%>"><i class=" fas fa-users"></i>Faculty
List</a>
</div></li>



<li class="nav-item dropdown" style="padding-left: 5px"><a
class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
role="button" data-toggle="dropdown" aria-haspopup="true"
aria-expanded="false"> <font style="color: white;">Subject</font>
</a>

<div class="dropdown-menu" aria-labelledby="navbarDropdown">
<a class="dropdown-item" href="<%=ORSView.SUBJECT_CTL%>"><i
class="fas fa-calculator"></i>Add Subject</a> <a
class="dropdown-item" href="<%=ORSView.SUBJECT_LIST_CTL%>"> <i
class="fas fa-sort-amount-down"></i>Subject List
</a>
</div></li>

<%
}
}
%>


<li class="nav-item dropdown"
style="padding-left: 5px; padding-right: 67px"><a
class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
role="button" data-toggle="dropdown" aria-haspopup="true"
aria-expanded="false"><font style="color: white;">
<i class="fas fa-user-tie"></i>
<%=welcomeMsg%>
</font></a>
<div class="dropdown-menu" aria-labelledby="navbarDropdown">

<%
if (userLoggedIn) {
%>

<a class="dropdown-item"
href="<%=ORSView.LOGIN_CTL%>?operation=<%=LoginCtl.OP_LOG_OUT%>"><i
class="fas fa-sign-out-alt"></i>Logout </a> <a class="dropdown-item"
href="<%=ORSView.MY_PROFILE_CTL%>"><i class="fas fa-user-tie"></i>My
Profile</a> <a class="dropdown-item"
href="<%=ORSView.CHANGE_PASSWORD_CTL%>"> <i
class="fas fa-edit"></i>Change Password
</a> <a class="dropdown-item" href="<%=ORSView.JAVA_DOC_VIEW%>" target="blank"><i
class="fas fa-clone"></i>Java Doc </a>

<%
} else {
%>

<a class="dropdown-item" href="<%=ORSView.LOGIN_CTL%>"><i
class="fas fa-sign-in-alt"><b>Login</b></i> <a class="dropdown-item"
href="<%=ORSView.TEACHER_AND_STUDENT_CTL%>"><i
class="fas fa-registered"><b>User Registration</b></i></a>
</div></li>

<%
}
%>

</ul>
</div>
</nav>
</div>
</body>
</html>