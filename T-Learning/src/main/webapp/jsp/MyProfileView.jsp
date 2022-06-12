<%@page import="in.co.tlearn.util.HTMLUtility"%>
<%@page import="in.co.tlearn.ctl.MyProfileCtl"%>
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

<style type="text/css">

.row, .container-fluid {
margin-left: 0px!important;
margin-right: 0px!important;
}

body {

	background-image: linear-gradient( rgba(0, 0, 0, 0.600) ,  rgba(0, 0, 0, 0.600)),
		url('../img/os.jpg');
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
	
	<br>
	
		<main>
		<form action="<%=ORSView.MY_PROFILE_CTL%>" method="post">
		
	<%UserBean Dto = (UserBean) session.getAttribute("user");%>	
			<div class="row pt-3 pb-3">
				<!-- Grid column -->
				<div class="col-md-4 mb-4"></div>
				<div class="col-md-4 mb-4">
					<div class="card">
						<div class="card-body">
							<h3 class="text-center text-primary">
							 My Profile
							</h3>
							<!--Body-->
							<div>
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
							
							
							<div class="modal-body">
							<div class="container text-center">
							
							<img alt="image" src="<%=ORSView.APP_CONTEXT%>/img/<%=userDto.getProfile()%>" class="img-fluid" style="border-radius:50% ; max-height:120px">
							
							</div>
							</div>
							
							
							
		<div class="md-form">
		<div class="col-sm-12">
      <div class="input-group">
      <label><b>Email id</b></label>
      <span style="color:red;">*</span>&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-address-card grey-text" style="font-size: 1rem;"></i> </div>
        </div>
        <input type="text"  class="form-control" name="emailid" 
									placeholder=" email Id" readonly="readonly"
									value="<%=DataUtility.getStringData(dto.getEmailid())%>">
      </div>
    </div>		
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("emailid", request)%></font></br>						
		
	
	<div class="col-sm-12">
      <div class="input-group">
      <label><b>First Name</b></label><span style="color:red;">*</span> &nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-user-alt grey-text" style="font-size: 1rem;"></i> </div>
        </div>
        <input type="text" class="form-control" name="firstname" placeholder="First Name" value="<%=DataUtility.getStringData(dto.getFirstname())%>">
      </div>
    </div>							
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("firstname", request)%></font></br>							
								
	
    <div class="col-sm-12">
      <div class="input-group">
      <label><b>Last Name</b></label>
	<span style="color: red;">*</span>  &nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-user-circle grey-text" style="font-size: 1rem;"></i> </div>
        </div>
        <input type="text" class="form-control" name="lastname" placeholder="Last Name" value="<%=DataUtility.getStringData(dto.getLastname())%>">
      </div>
    </div>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("lastname", request)%></font></br>		
	

	<div class="col-sm-12">
      <div class="input-group">
      <label><b>Mobile No</b></label>
	<span style="color: red;">*</span> &nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-phone-square grey-text" style="font-size: 1rem;"></i> </div>
        </div>
        <input type="text" class="form-control" id="defaultForm-email" maxlength="10" name="mobile"placeholder="mobile No" value="<%=DataUtility.getStringData(dto.getMobileno())%>">
      </div>
    </div>							
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("mobile", request)%></font></br>
	
	<% if(userDto.getRoleid()==3){%>
	
	<div class="col-sm-12">
      <div class="input-group">
      <label><b>qualificati</b></label>
	<span style="color: red;">*</span> &nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-phone-square grey-text" style="font-size: 1rem;"></i> </div>
        </div>
        <input type="text" class="form-control" id="defaultForm-email" maxlength="10" name="qua"placeholder="qualifications" value="<%=DataUtility.getStringData(dto.getQualifications())%>">
      </div>
    </div>							
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("qua", request)%></font></br>
	
	<div class="col-sm-12">
      <div class="input-group">
      <label><b>unique_id</b></label>
	<span style="color: red;">*</span> &nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-phone-square grey-text" style="font-size: 1rem;"></i> </div>
        </div>
        <input type="text" class="form-control" id="defaultForm-email" maxlength="10" name="un" placeholder="unique id" value="<%=DataUtility.getStringData(dto.getTea_uniqueid())%>">
      </div>
    </div>							
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("un", request)%></font></br>
	
	<%} %>
	
 	<div class="col-sm-12">
      <div class="input-group">
      <label><b>Gender</b></label><span style="color: red;">*</span>&nbsp; &nbsp; &nbsp;&nbsp;
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
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("gender", request)%></font></br>
	
	<div class="col-sm-12">
      <div class="input-group">
      <label><b>DOB</b></label>
	<span style="color: red;">*</span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-calendar grey-text" style="font-size: 1rem;"></i> </div>
        </div>
        <input type="text" id="datepicker" name="dob" class="form-control" placeholder="Date Of Birth" readonly="readonly" value="<%=DataUtility.getDateString(dto.getDob())%>">
      </div>
    </div>	
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("dob", request)%></font></br>
							
							
							
				<!-- <div class="col-sm-12">
      <div class="input-group">
      <label><b>Add Profile Pic:</b></label>			
					
		</div>			 
        <input type="file" name="image" class="form-control">
      </div>
    </div>			
							 -->
							
							
							
							
							
							</br>
							<div class="text-center">
								<input type="submit" name="operation"
									class="btn btn-success btn-md" style="font-size: 17px"
									value="<%=MyProfileCtl.OP_SAVE%>">
										<input type="submit" name="operation"
									class="btn btn-warning btn-md" style="font-size: 17px"
									value="<%=MyProfileCtl.OP_CHANGE_MY_PASWORD%>">
							</div>
                         
						</div>
					</div>
				</div>
				</div>
				<div class="col-md-4 mb-4"></div>
				</div>
				
				<br><br>
				
		</form>
		</main>
	</div>

<%@include file="Footer.jsp"%>

</body>
</html>