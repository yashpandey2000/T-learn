<%@page import="in.co.tlearn.util.HTMLUtility"%>
<%@page import="in.co.tlearn.bean.CourseBean"%>
<%@page import="in.co.tlearn.util.DataUtility"%>
<%@page import="in.co.tlearn.util.ServletUtility"%>
<%@page import="in.co.tlearn.ctl.CourseListCtl"%>
<%@page import="java.util.List"%>

<%@page import="java.util.Iterator"%>

<%@page import="java.util.HashMap"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">



<%-- <script src="<%=ORSView.APP_CONTEXT%>/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=ORSView.APP_CONTEXT%>/js/CheckBox11.js"></script>
 --%>
 
<style type="text/css">

/* .checkbox{

vertical-align: right;
} */


body {

	background-image: linear-gradient( rgba(0, 0, 0, 0.300) ,  rgba(0, 0, 0, 0.300)),
		url('../img/1.jpg');
   background-position: center;
   background-size:1550px;
   background-repeat: no-repeat;
}

</style>

</head>
<body>


	<div>
		<%@include file="Header.jsp"%>
	</div>
	<div>

		<div class="container-fluid">

			<form action="<%=ORSView.COURSE_LIST_CTL%>" method="post">


				<%
					UserBean Dto = (UserBean) session.getAttribute("user");
				%>

<jsp:useBean id="dto2" class="in.co.tlearn.bean.RoleBean"
				scope="request"></jsp:useBean>
				
				<jsp:useBean id="dto" class="in.co.tlearn.bean.CourseBean"
					scope="request"></jsp:useBean>
					
				<jsp:useBean id="dto1" class="in.co.tlearn.bean.UserBean"
					scope="request"></jsp:useBean>

				<%
					List list1 = (List) request.getAttribute("courseList");
				%>
				<%
					int pageNo = ServletUtility.getPageNo(request);
					int pageSize = ServletUtility.getPageSize(request);
					int index = ((pageNo - 1) * pageSize) + 1;
					int nextPageSize = DataUtility.getInt(request.getAttribute("nextListSize").toString());
					List list = ServletUtility.getList(request);
					Iterator<CourseBean> it = list.iterator();
					if (list.size() != 0) {
				%>
				<center>
	<h1 class=" font-weight-bold pt-3" style="font-family: 'Brush Script MT', cursive;color: white;">
						Course List
					</h1>
					<center>

						<br> <br>


						<div class="row">
							<div class="col-md-4"></div>

							<%
								if (!ServletUtility.getSuccessMessage(request).equals("")) {
							%>

							<div class="col-md-4 alert alert-success alert-dismissible"
								align="center" style="background-color: #80ff80">
								<button type="button" class="close" data-dismiss="alert">&times;</button>
								<h4>
									<font color="#008000"><%=ServletUtility.getSuccessMessage(request)%></font>
								</h4>
							</div>
							<%
								}
							%>

							<div class="col-md-4"></div>
						</div>
						<div class="row">
							<div class="col-md-4"></div>

							<%
								if (!ServletUtility.getErrorMessage(request).equals("")) {
							%>
							<div class=" col-md-4 alert alert-danger alert-dismissible"
								align="center">
								<button type="button" class="close" data-dismiss="alert">&times;</button>
								<h4>
									<font color="red"> <%=ServletUtility.getErrorMessage(request)%></font>
								</h4>
							</div>
							<%
								}
							%>



							<div class="row">

								<div class="col-sm-5"></div>

								<div class="col-sm-2">
									<%=HTMLUtility.getList("course", String.valueOf(dto.getId()), list1)%>
								</div>

								<div class="col-sm-2">
									<input type="submit" class="btn btn-success btn-md"
										style="font-size: 17px" name="operation"
										value="<%=CourseListCtl.OP_SEARCH%>">&emsp; <input
										type="submit" class="btn btn-dark btn-md"
										style="font-size: 17px" name="operation"
										value="<%=CourseListCtl.OP_RESET%>">
								</div>

								<div class="col-sm-3"></div>
							</div>


							</br>




							<%
								while (it.hasNext()) {
										dto = it.next();
							%>




							<div class="container my-5">
								<div class="card row flex-row-reverse">
									<img class="col-lg-4 card-img-end img-fluid p-0"
										src="https://picsum.photos/300/200" />
									<div class="col-lg-8 card-body">
										<input  type="hidden" name="id" value="<%=dto.getId()%>">
									
									<%-- <input  type="checkbox" class="checkbox" name="ids"
											align="right" value="<%=dto.getId()%>"> --%>
											
											
										<h5 class="card-title" align="center"><%=dto.getCourse_name()%></h5>
										<p class="card-text"><%=dto.getCourse_description()%></p>
										<h5 align="center">
											Duration :
											<%=dto.getCourse_duration()%></h5>
											
											
											
										<h5 align="center">
											Tutor :
											<%=dto.getTea_name()%></h5>
										<br>



										<div class="col-md-12" align="center">
										
											<%-- <a href="CourseCtl?id=<%=dto.getId()%>"
												><i class="fas fa-edit"
												grey-text" style="font-size: 1rem;">Edit</i></a>
											&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit"
												name="operation" class="btn btn-danger btn-md"
												style="font-size: 17px" value="<%=CourseListCtl.OP_DELETE%>"> --%>

											<a href="StudentCtl?id=<%=dto.getId()%>" class="btn btn-primary">Get Started</a>
										</div>
									</div>
								</div>




								<%
									}
								%>



								<br>
								<br>

								<table width="100%">
									<tr>
										<td><input type="submit" name="operation"
											class="btn btn-danger btn-md" style="font-size: 17px"
											value="<%=CourseListCtl.OP_PREVIOUS%>"
											<%=pageNo > 1 ? "" : "disabled"%>></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										
										
										<% if(dto2.getId()==3 && dto2.getId()==1){%>
										<td><input type="submit" name="operation"
											class="btn btn-warning btn-md" style="font-size: 17px"
											value="<%=CourseListCtl.OP_NEW%>"></td>
											
											<%} %>

										<%-- <td></td> --%>

										<td align="right"><input type="submit" name="operation"
											class="btn btn-danger btn-md" style="font-size: 17px"
											style="padding:5px;" value="<%=CourseListCtl.OP_NEXT%>"
											<%=(nextPageSize != 0) ? "" : "disabled"%>></td>
									</tr>
									<tr></tr>
								</table>
								<br>
								<br>
								<%
									}
									if (list.size() == 0) {
										System.out.println("user list view list.size==0");
								%>
								<center>
									<h1 class=" font-weight-bold pt-3">
										<U>Course List</U>
									</h1>
								</center>

								</br>
								<div class="row">
									<div class="col-md-4"></div>

									<%
										if (!ServletUtility.getErrorMessage(request).equals("")) {
									%>
									<div class=" col-md-4 alert alert-danger alert-dismissible"
										align="center">
										<button type="button" class="close" data-dismiss="alert">&times;</button>
										<h4>
											<font color="red"> <%=ServletUtility.getErrorMessage(request)%></font>
										</h4>
									</div>
									<%
										}
									%>
									<div class="col-md-4"></div>
								</div>
								</br>
								<div style="padding-left: 48%;">
									<input type="submit" name="operation"
										class="btn btn-primary btn-md" style="font-size: 17px"
										value="<%=CourseListCtl.OP_BACK%>">
								</div>
								<%
									}
								%>
								<input type="hidden" name="pageNo" value="<%=pageNo%>">
								<input type="hidden" name="pageSize" value="<%=pageSize%>">
			</form>

		</div>
</body>
<%@include file="Footer.jsp"%>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>


</body>
</html>

