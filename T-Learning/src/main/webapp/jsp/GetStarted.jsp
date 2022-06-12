<%@page import="in.co.tlearn.ctl.StudentCtl"%>
<%@page import="in.co.tlearn.util.HTMLUtility"%>
<%@page import="java.util.List"%>
<%@page import="in.co.tlearn.util.ServletUtility"%>
<%@page import="in.co.tlearn.util.DataUtility"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
.row, .container-fluid {
margin-left: 0px!important;
margin-right: 0px!important;
}

body {

	background-image: linear-gradient( rgba(0, 0, 0, 0.600) ,  rgba(0, 0, 0, 0.600)),
		url('../img/os.jpg');
   background-position: center;
   background-size:1550px;
   background-repeat: no-repeat;
}

</style>

</head>
<body>


<div class="header">
		<%@include file="Header.jsp"%>
			<%@include file="Calendar.jsp" %>
	</div>
	<div>
		
		<main>
		<form action="<%=ORSView.STUDENT_CTL%>" method="post">
		
		<jsp:useBean id="dto" class="in.co.tlearn.bean.StudentBean"
			scope="request"></jsp:useBean>
		
		<br><br>

			<div class="row pt-3 pb-3">
				<!-- Grid column -->
				<div class="col-md-4 mb-4"></div>
				<div class="col-md-4 mb-4">
					<div class="card">
						<div class="card-body">
							<%
								long id = DataUtility.getLong(request.getParameter("id"));
							%>
							<h3 class="text-center default-text text-primary">Enroll To Your Course !!</h3>
							
							<!--Body-->
							<div>

<br>
								<H6 align="center">
									<%
										if (!ServletUtility.getSuccessMessage(request).equals("")) {
									%>
									<div class="alert alert-success alert-dismissible">
										<button type="button" class="close" data-dismiss="alert">&times;</button>
										<%=ServletUtility.getSuccessMessage(request)%>
									</div>
									<%
										}
									%>
								</H6>

								<H6 align="center">
									<%
										if (!ServletUtility.getErrorMessage(request).equals("")) {
									%>
									<div class="alert alert-danger alert-dismissible">
										<button type="button" class="close" data-dismiss="alert">&times;</button>
											<%=ServletUtility.getErrorMessage(request)%>
									</div>
									<%
										}
									%>

								</H6>

								<input type="hidden" name="id" value="<%=dto.getId()%>">
							<%-- 	<input type="hidden" name="id2" value="<%=dto2.getId()%>"> --%>
								<input type="hidden" name="createdBy"
									value="<%=dto.getCreatedby()%>"> <input type="hidden"
									name="modifiedBy" value="<%=dto.getModifiedby()%>"> <input
									type="hidden" name="createdDatetime"
									value="<%=DataUtility.getTimestamp(dto.getCreateddatetime())%>">
								<input type="hidden" name="modifiedDatetime"
									value="<%=DataUtility.getTimestamp(dto.getModifieddatetime())%>">
							</div>
							<%
								List li = (List) request.getAttribute("courseList");
							%>

	
	
									
	
		<div class="col-sm-12">
      <div class="input-group">
      <label><b>First Name</b></label><span style="color: red;">*</span> &nbsp; &nbsp; &nbsp; &nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-user-alt grey-text" style="font-size: 1rem;"></i> </div>
        </div>
        <input type="text" class="form-control" name="firstname" placeholder="First Name" value="<%=DataUtility.getStringData(dto.getFirstname())%>">
      </div>
    </div>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  <font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("firstname", request)%></font></br>			
	
	
    <div class="col-sm-12">
      <div class="input-group">
      <label><b>Last Name</b></label><span style="color: red;">*</span>  &nbsp; &nbsp; &nbsp; &nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-user-circle grey-text" style="font-size: 1rem;"></i> </div>
        </div>
        <input type="text" class="form-control" name="lastname" placeholder="Last Name" value="<%=DataUtility.getStringData(dto.getLastname())%>">
      </div>
    </div>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  <font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("lastname", request)%></font></br>		
	
	
	<div class="col-sm-12">
      <div class="input-group">
      <label><b>Email Id</b></label><span style="color: red;">*</span>  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-envelope grey-text" style="font-size: 1rem;"></i> </div>
        </div>
       <input type="text" name="email" class="form-control" placeholder="email Id"
									value="<%=DataUtility.getStringData(dto.getEmailid())%>">
      </div>
    </div>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("email", request)%></font></br>
	
	
	<div class="col-sm-12">
      <div class="input-group">
      <label><b>Mobile No</b></label><span style="color: red;">*</span> &nbsp; &nbsp; &nbsp;  &nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-phone-square grey-text" style="font-size: 1rem;"></i> </div>
        </div>
        <input type="text" class="form-control" id="defaultForm-email" maxlength="10" name="mobile" placeholder="mobile No" value="<%=DataUtility.getStringData(dto.getMobileno())%>">
      </div>
    </div>							
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("mobile", request)%></font></br>
	
	
	<div class="col-sm-12">
      <div class="input-group">
      <label><b>DOJ</b></label><span style="color: red;">*</span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-calendar grey-text" style="font-size: 1rem;"></i> </div>
        </div>
        <input type="text" id="datepicker" name="dob" class="form-control" placeholder="Date Of Joining" readonly="readonly" value="<%=DataUtility.getDateString(dto.getDoj()) %>">
      </div>
    </div>	
	 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("dob", request)%></font></br>
	 
		
		<%-- <input type="hidden" name="courseid" value="<%= DataUtility.getStringData(dto.getCourse_name())%>">  --%>
						
	<div class="col-sm-12">
      <div class="input-group">
      <label><b>Course</b></label><span style="color: red;">*</span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-building grey-text" style="font-size: 1rem;"></i> </div>
        </div>
        <%=HTMLUtility.getList("courseid", String.valueOf(dto.getCourse_id()), li)%>
      </div></div>	
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  <font color="red" class="pl-sm-5">  <%=ServletUtility.getErrorMessage("college", request)%></font></br>													
						
							
							<br>
							
							
								<div class="text-center">

									<input type="submit" name="operation"
										class="btn btn-success btn-md" style="font-size: 17px"
										value="<%=StudentCtl.OP_SAVE%>"> &nbsp; <input type="submit"
										name="operation" class="btn btn-warning btn-md"
										style="font-size: 17px" value="<%=StudentCtl.OP_RESET%>">

								</div>
							
						</div>
					</div>
					
					</div>
					<div class="col-md-4 mb-4"></div>
					</div>
					
					<br><br><br>
					
		</form>
		</main>


	</div>
	
<%@include file="Footer.jsp"%>




</body>
</html>