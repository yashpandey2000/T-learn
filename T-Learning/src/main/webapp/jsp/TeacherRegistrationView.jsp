<%@page import="in.co.tlearn.ctl.TeacherRegistrationCtl"%>
<%@page import="in.co.tlearn.util.HTMLUtility"%>

<%@page import="in.co.tlearn.util.DataUtility"%>
<%@page import="in.co.tlearn.util.ServletUtility"%>
<%@page import="java.util.HashMap"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>T-Learn</title>

  
  <script>
	function phoneno() {
		$('#phone').keypress(function(e) {
			var a = [];
			var k = e.which;
			for (i = 48; i < 58; i++)
				a.push(i);
			if (!(a.indexOf(k) >= 0))
				e.preventDefault();
		});
	}
</script>

<style type="text/css">
.input-group-prepend{
height:38px;
}


.row, .container-fluid {
margin-left: 0px!important;
margin-right: 0px!important;
}


body {

	background-image: linear-gradient( rgba(0, 0, 0, 0.600) ,  rgba(0, 0, 0, 0.600)),
		url('img/book.jpg');
   background-position: center;
   background-size: 1550px;
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
		<form action="<%=ORSView.TEACHER_REGISTRATION_CTL%>" method="post">

			<div class="row pt-3">
				<!-- Grid column -->
				<div class="col-md-4 mb-4"></div>
				<div class="col-md-4 mb-4">
					<div class="card">
						<div class="card-body">

							<h3 class="text-center default-text text-primary pb-2"><u>Teacher Registration</u>
							</h3>
							<!--Body-->
							<div>

<br>




								<jsp:useBean id="dto" class="in.co.tlearn.bean.UserBean"
									scope="request"></jsp:useBean>
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
								<input type="hidden" name="createdBy"
									value="<%=dto.getCreatedby()%>"> <input type="hidden"
									name="modifiedBy" value="<%=dto.getModifiedby()%>"> <input
									type="hidden" name="createdDatetime"
									value="<%=DataUtility.getTimestamp(dto.getCreateddatetime())%>">
								<input type="hidden" name="modifiedDatetime"
									value="<%=DataUtility.getTimestamp(dto.getModifieddatetime())%>">
							</div>

		
		<div class="col-sm-12">
      <div class="input-group">
      <label><b>First Name</b></label>
		<span style="color: red;">*</span> &nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-user-alt grey-text" style="font-size: 1rem;"></i> </div>
        </div>
        <input type="text" class="form-control" name="firstname" placeholder="First Name" value="<%=DataUtility.getStringData(dto.getFirstname())%>">
      </div>
    </div>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("firstname", request)%></font></br>			
			
	
    <div class="col-sm-12">
      <div class="input-group">
      <label><b>Last Name</b></label>
	<span style="color: red;">*</span> &nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-user-circle grey-text" style="font-size: 1rem;"></i> </div>
        </div>
        <input type="text" class="form-control" name="lastname" placeholder="Last Name" value="<%=DataUtility.getStringData(dto.getLastname())%>">
      </div>
    </div>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("lastname", request)%></font></br>		
			 
	
    <div class="col-sm-12">
      <div class="input-group">
      <label><b>Password</b></label> 
	<span style="color: red;">*</span> &nbsp; &nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-key grey-text" style="font-size: 1rem;"></i> </div>
        </div>
        <input type="password" class="form-control" name="password" placeholder="password" value="<%=DataUtility.getStringData(dto.getPassword())%>">
      	
      </div>
    </div>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("password", request)%></font></br>
								
						
	<div class="col-sm-12">
      <div class="input-group">
      <label><b>Confirm <br> 
      Password</b></label>
	<span style="color: red;">*</span>	&nbsp; &nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-key grey-text" style="font-size: 1rem;"></i> </div>
        </div>
        <input type="password" class="form-control" name="confirmpassword" placeholder="confirmPassword" value="<%=DataUtility.getStringData(dto.getConfirmpassword())%>">
      </div>
    </div>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("confirmpassword", request)%></font></br>
	
						
	<div class="col-sm-12">
      <div class="input-group">
      <label><b>Email Id</b></label>
	<span style="color: red;">*</span>	&nbsp; &nbsp; &nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-envelope grey-text" style="font-size: 1rem;"></i> </div>
        </div>
        <input type="text" class="form-control" id="defaultForm-email" name="loginid" placeholder="email Id" value="<%=DataUtility.getStringData(dto.getEmailid())%>">
       
      </div>
    </div>
	&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("loginid", request)%></font></br>
	
	
	
	<div class="col-sm-12">
      <div class="input-group">
       <label><b>Unique_id</b></label>
	    <span style="color:red;">*</span> &nbsp;&nbsp;&nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-book grey-text" style="font-size: 1rem;"></i> </div>
        </div>
        <%-- <input type="text" class="form-control" name="un" placeholder="Enter Course Name" value="<%=DataUtility.getStringData(dto.getTea_id()).equals("0") ? ""
					: DataUtility.getStringData(dto.getTea_id())%>"> --%>
					
					 <input type="text" class="form-control" id="defaultForm-email" name="un" placeholder="unique Id" value="<%=DataUtility.getStringData(dto.getTea_uniqueid())%>">
      </div>
    </div>
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("un", request)%></font></br>							
	
	
	<div class="col-sm-12">
      <div class="input-group">
       <label><b>Qualificati</b></label>
	    <span style="color:red;">*</span> &nbsp;&nbsp;&nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-book grey-text" style="font-size: 1rem;"></i> </div>
        </div>
        <%-- <input type="text" class="form-control" name="un" placeholder="Enter Course Name" value="<%=DataUtility.getStringData(dto.getTea_id()).equals("0") ? ""
					: DataUtility.getStringData(dto.getTea_id())%>"> --%>
					
					 <input type="text" class="form-control" id="defaultForm-email" name="qua" placeholder="qualifications" value="<%=DataUtility.getStringData(dto.getQualifications())%>">
      </div>
    </div>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("qua", request)%></font></br>							
	
	
	
	
	<div class="col-sm-12">
      <div class="input-group">
      <label><b>Mobile No</b></label>
	<span style="color: red;">*</span>&nbsp;&nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-phone-square grey-text" style="font-size: 1rem;"></i> </div>
        </div>
        <input type="text" class="form-control" id="defaultForm-email" maxlength="10" name="mobile"placeholder="mobile No" value="<%=DataUtility.getStringData(dto.getMobileno())%>">
      </div>
    </div>							
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("mobile", request)%></font></br>
		
 	
 	<div class="col-sm-12">
      <div class="input-group">
      <label><b>Gender</b></label>
	<span style="color: red;">*</span>  &nbsp; &nbsp; &nbsp; &nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-venus-mars grey-text" style="font-size: 1rem;"></i> </div>
        </div>
        
									<%
										HashMap map = new HashMap();
										map.put("Male", "Male");
										map.put("Female", "Female");
										String htmlList = HTMLUtility.getList("gender", dto.getGender(), map);
									%>
									<%=htmlList%></div>
      
    </div>		
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("gender", request)%></font></br>
								
	
	<div class="col-sm-12">
      <div class="input-group">
      <label><b>DOB</b></label>
	<span style="color: red;">*</span>  &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-calendar grey-text" style="font-size: 1rem;"></i> </div>
        </div>
        <input type="text" id="datepicker" name="dob" class="form-control" placeholder="Date Of Birth" readonly="readonly" value="<%=DataUtility.getDateString(dto.getDob())%>">
      </div>
    </div>	
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("dob1", request)%></font></br>


<br>
<br>
			

							<div class="text-center">

								<input type="submit" name="operation"
									class="btn btn-success btn-md" style="font-size: 17px"
									value="<%=TeacherRegistrationCtl.OP_SIGN_UP%>"> <input
									type="submit" name="operation" class="btn btn-warning btn-md"
									style="font-size: 17px"
									value="<%=TeacherRegistrationCtl.OP_RESET%>">
							</div>
						</div>
						
						
			<br>
			<br>
			

					</div>
				</div>
				<div class="col-md-4 mb-4"></div>
			</div>
			
			
			
		</form>
		</main>

	</div>

</body>
<br>
<br>
<%@include file="Footer.jsp"%>



</body>
</html>