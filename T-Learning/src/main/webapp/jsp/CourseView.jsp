<%@page import="in.co.tlearn.util.HTMLUtility"%>
<%@page import="in.co.tlearn.ctl.ORSView"%>
<%@page import="in.co.tlearn.ctl.CourseCtl"%>
<%@page import="in.co.tlearn.util.ServletUtility"%>
<%@page import="in.co.tlearn.util.DataUtility"%>
<%@page import="java.util.HashMap"%>

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
	</div>
	<div>
		<jsp:useBean id="dto" class="in.co.tlearn.bean.CourseBean"
			scope="request"></jsp:useBean>
			
			<jsp:useBean id="dto1" class="in.co.tlearn.bean.UserBean"
				scope="request"></jsp:useBean>
			
			<br>

		<main>
		<form action="<%=ORSView.COURSE_CTL%>" method="post">

			<div class="row pt-3 pb-3">
				<!-- Grid column -->
				<div class="col-md-4 mb-4"></div>
				<div class="col-md-4 mb-4">
					<div class="card">
						<div class="card-body">
							<%
							  long id=DataUtility.getLong(request.getParameter("id"));
							
							
							if (id >0)  {
							%>
							<h3 class="text-center default-text text-primary">Update Course</h3>
							<%
								} else {
							%>
							<h3 class="text-center default-text text-primary">Add Course</h3>
							<%
								}
							%>
							<!--Body-->
							<div>


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
							<div class="md-form">
							 
								
		<div class="col-sm-12">
      <div class="input-group">
       <label><b>Course Name</b></label>
	    <span style="color:red;">*</span> &nbsp;&nbsp;&nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-book grey-text" style="font-size: 1rem;"></i> </div>
        </div>
        <input type="text" class="form-control" name="cname" placeholder="Enter Course Name" value="<%=DataUtility.getStringData(dto.getCourse_name())%>">
      </div>
    </div>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("cname", request)%></font></br>							
									
	
	<div class="col-sm-12">
      <div class="input-group">
      <label><b>Duration</b></label>
	<span style="color:red;">*</span> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-clock grey-text" style="font-size: 1rem;"></i> </div>
        </div>
        
									<%
										HashMap map = new HashMap();
									map.put("1Month", "1Month");
									map.put("2Month", "2Month");
									map.put("3Month", "3Month");
									map.put("4Month", "4Month");
									map.put("5Month", "5Month");
									map.put("6Month", "6Month");
									map.put("7Month", "7Month");
										
										String HtmlList = HTMLUtility.getList("duration", dto.getCourse_duration(), map);
									%>
									<%=HtmlList%></div>
      
    </div>		
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("duration", request)%></font></br>
								
							
								
	  <div class="col-sm-12">
      <div class="input-group">
      <label><b>Description</b></label>
	   <span style="color:red;">*</span> &nbsp; &nbsp; &nbsp; &nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-list grey-text" style="font-size: 1rem;"></i> </div>
        </div>
       <textarea name="desc" placeholder="Enter description" class="form-control"
		 rows="5" cols="5"><%=DataUtility.getStringData(dto.getCourse_description())%></textarea>

      </div>
    </div>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("desc", request)%></font></br>
   
   
   
   
   <div class="col-sm-12">
      <div class="input-group">
       <label><b>Meeting_Code</b></label>
	    <span style="color:red;">*</span> &nbsp;&nbsp;&nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fab fa-meetup grey-text" style="font-size: 1rem;"></i> </div>
        </div>
        <input type="text" class="form-control" name="meet" placeholder="Enter Meeting Code" value="<%=DataUtility.getStringData(dto.getMeet_code())%>">
      </div>
    </div>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("meet", request)%></font></br>							
						   
   
   
   
   
<!--  <form method="post" action="" enctype="multipart/form-data">
<div style="margin-left:2%;" class="pb-2" >
  <input type="file" name="file"/> 
  <input type="submit" value="Upload"/> -->
  
   <%--  <input type="submit" value="Upload" />
  
<a href="<%=ORSView.APP_CONTEXT%>/jsp/UploadForm.jsp" class="btn btn-md btn-danger "  role="button" >
upload <span class="fas fa-upload"></a></span><br> --%>
    
<%-- <%String h = (String)request.getAttribute("hm");

if(h!=null){

%> 

<font color="green"><%=h%></font>

<%}%>

</div>
</form>
</div> --%>




 
    <%if(id>0){ %>
    <div class="col-sm-12">
      <div class="input-group">
      <label><b>Tutor Name</b></label>
	   <span style="color:red;">*</span> &nbsp; &nbsp; &nbsp; &nbsp;
        <div class="input-group-prepend">
          <div class="input-group-text"><i class="fa fa-list grey-text" style="font-size: 1rem;"></i> </div>
        </div>
     
 <input type="text" class="form-control" name="tea" placeholder="Enter Tutor name" readonly="readonly" value="<%=DataUtility.getStringData(dto.getTea_name())%>">
      </div>
    </div>
    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <font color="red" class="pl-sm-5"> <%=ServletUtility.getErrorMessage("teacher", request)%></font></br>
   
     <%} %>
    
							</br>
							<%
								if(id>0) {
							%>
							<div class="text-center">

								<input type="submit" name="operation"
									class="btn btn-success btn-md" style="font-size: 17px"
									value="<%=CourseCtl.OP_UPDATE%>"> <input type="submit"
									name="operation" class="btn btn-warning btn-md"
									style="font-size: 17px" value="<%=CourseCtl.OP_CANCEL%>">
							</div>
							<%
								} else {
							%>
							<div class="text-center">

								<input type="submit" name="operation"
									class="btn btn-success btn-md" style="font-size: 17px"
									value="<%=CourseCtl.OP_SAVE%>"> <input type="submit"
									name="operation" class="btn btn-warning btn-md"
									style="font-size: 17px" value="<%=CourseCtl.OP_RESET%>">
							</div>
							<%
								}
							%>
						</div>
					</div>
				</div>
				<div class="col-md-4 mb-4"></div>
				</div>
				
				<br><br><br>
				
		</form>
		</main>


	</div>

<br><br>
</body>
<%@include file="Footer.jsp"%>


</body>
</html>