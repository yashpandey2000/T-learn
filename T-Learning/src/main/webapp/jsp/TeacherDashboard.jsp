<!DOCTYPE html>
<%@page import="in.co.tlearn.ctl.ORSView"%>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <link rel="stylesheet" href="<%=ORSView.APP_CONTEXT%>/css/styleTeacher.css" />

    <title>Teacher</title>
    
    <style type="text/css">
.row, .container-fluid {
margin-left: 0px!important;
margin-right: 0px!important;
}

body {

	background-image: linear-gradient( rgba(0, 0, 0, 0.100) ,  rgba(0, 0, 0, 0.100)),
		url('../img/website-design-background-1.webp');
   background-position: center;
   background-size:1550px;
   background-repeat: no-repeat;
}



</style>

  </head>
  <body >
  
  <div class="header">
		 <%@include file="Header.jsp"%> 
		 
	</div>
  
  <form action="<%=ORSView.WELCOME_CTL%>" method="post">
  
    <div id="mySidenav" class="sidenav">
       <a href="javascript:void(0)" class="closebtn" onclick="closeNav()"
         >&times;</a> 
         
      <a href="<%=ORSView.TEACHER_MY_COURSE_CTL%>">My Courses</a>
      
      <div class="container mt-3">
       <a href="" data-toggle="modal" data-target="#myModal" >Assignments</a>
        <div class="modal fade" id="myModal" role="dialog">
       <br><br><br>
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title">Add Assignment</h1>
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        <div class="modal-body">
        <span>
         <table class="table mb-4">
                        <thead>
                          <tr>
                            <th scope="col">No.</th>
                            <th scope="col">Assignments</th>
                            <th scope="col">Status</th>
                            <th scope="col">Actions</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row">1</th>
                            <td>Java Scripts</td>
                            <td>In progress</td>
                            <td>
                              <form action="/action_page.php">
                                <input type="file" id="myFile" name="filename" class="btn-success">
                                <input type="submit"  class="btn btn-danger mt-1">
                              </form>
                            </td>
                          </tr>
                          <tr>
                            <th scope="row">2</th>
                            <td>Advance Java</td>
                            <td>In progress</td>
                            <td>
                              <form action="/action_page.php">
                                <input type="file" id="myFile" name="filename" class="btn-success">
                                <input type="submit" class="btn btn-danger mt-1">
                              </form>
                            </td>
                          </tr>
                          <tr>
                            <th scope="row">3</th>
                            <td>Python Programming</td>
                            <td>Finished</td>
                            <td>
                              <button type="submit" class="btn btn-primary">View</button>
                              <button type="submit" class="btn btn-danger ms-1">Delete</button>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                      </span>
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  </div>
       
    <div class="container mt-3">
      <a href="#" data-toggle="modal" data-target="#mModal">Study Material</a>
      
       <div class="modal fade" id="mModal" role="dialog">
       <br><br><br>
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title">Add Study Material</h1>
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>
        <div class="modal-body">
        <span>
         <table class="table mb-4">
                        <thead>
                          <tr>
                            <th scope="col">No.</th>
                            <th scope="col">Assignments</th>
                            <th scope="col">Status</th>
                            <th scope="col">Actions</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row">1</th>
                            <td>Java Scripts</td>
                            <td>In progress</td>
                            <td>
                              <form action="/action_page.php">
                                <input type="file" id="myFile" name="filename" class="btn-success">
                                <input type="submit"  class="btn btn-danger mt-1">
                              </form>
                            </td>
                          </tr>
                          <tr>
                            <th scope="row">2</th>
                            <td>Advance Java</td>
                            <td>In progress</td>
                            <td>
                              <form action="/action_page.php">
                                <input type="file" id="myFile" name="filename" class="btn-success">
                                <input type="submit" class="btn btn-danger mt-1">
                              </form>
                            </td>
                          </tr>
                          <tr>
                            <th scope="row">3</th>
                            <td>Python Programming</td>
                            <td>Finished</td>
                            <td>
                              <button type="submit" class="btn btn-primary">View</button>
                              <button type="submit" class="btn btn-danger ms-1">Delete</button>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                      </span>
          
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  </div>
      
      
      
      <a href="#">Recordings</a>
    </div>

    <span style="font-size: 30px ;color: white; cursor: pointer ; padding-left: 20px;" onclick="openNav()"
      > &#9776;
    </span>

    <div id="body">
      <div class="container">
        <div
          class="jumbotron text-center"
          style="background: transparent; color: rgb(0, 0, 0)"
        >
          <h1 class="display-3" style="color: white; font-family: 'Brush Script MT', cursive; font-weight: bolder;">Welcome Teacher</h1>
          <p class="display-5" style="color: white; font-family:  Verdana, sans-serif;">
            "It is the supreme art of the teacher to awaken joy in creative
            expression and knowledge."
          </p>

          <div class="row">
            <div class="col-4"></div>
            <div class="col-4 pt-5">
             
             <span class="nU false"
          ><a
            href="https://meet.google.com/new?hs=180&amp;authuser=0"
            
           
            class="btn btn-primary btn-lg btn-block"
           
            target="blank">Start Meeting Today</a></span>
          
             
            </div>
          </div>
         
          
        </div>
      </div>
    </div>
    <script>
      function openNav() {
        document.getElementById("mySidenav").style.width = "230px";
      }

      function closeNav() {
        document.getElementById("mySidenav").style.width = "0";
      }
    </script>
    
    <br><br><br><br><br>
    </form>
  </body>
</html>
