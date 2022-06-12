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

	background-image: linear-gradient( rgba(0, 0, 0, 0.200) ,  rgba(0, 0, 0, 0.200)),
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
  
  <form action="<%=ORSView.WELCOME_CTL2%>" method="post">
  
    <div id="mySidenav" class="sidenav">
      <a href="javascript:void(0)" class="closebtn" onclick="closeNav()"
         >&times;</a
      >
      <%-- <a href="<%=ORSView.TEACHER_MY_COURSE_CTL%>">My Courses</a>
       <a href="#">Recordings</a>
      <a href="#">Services</a>
      <a href="#">Contact</a> --%>
      
        <li class="nav-item dropdown">
            <a 
              class="nav-link dropdown-toggle"
              href="#"
              id="navbarDropdown"
              role="button"
              data-toggle="dropdown"
              aria-haspopup="true"
              aria-expanded="false"
            >
              Courses
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="#" onclick="myCourses()">My Courses</a>
              <a class="dropdown-item" href="#" onclick="myProgress()">Progress</a>
            </div>
          </li>
          
           <li class="nav-item dropdown">
            <a
              class="nav-link dropdown-toggle"
              href="#"
              id="navbarDropdown"
              role="button"
              data-toggle="dropdown"
              aria-haspopup="true"
              aria-expanded="false"
            >
              Assignments
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="#" onclick="myAssignments()">My Assignments</a>
              <a class="dropdown-item" href="#" onclick="myStudyMaterials()">Study Material</a>
            </div>
          </li>

          <li class="nav-item">
            <a class="nav-link" onclick="myCertificates()" href="#" >Certificate</a>
          </li>
        </ul>
      </div>
    </nav>
    
    
     <div class="container" id="myCourses" style="display: none;">
      <div class="row mt-3 " style="background: #000943;" >
        <h3 class="text-center p-4 " style="color: #9cdfef;">My Courses</h3>
        <div class="col-4 mb-3">
          
          <div class="card-deck" >
            <div class="card">
              <img class="card-img-top" src="..." alt="Card image cap" />
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">
                  This is a wider card with supporting text below as a natural
                  lead-in to additional content. This content is a little bit
                  longer.
                </p>
              </div>
              <div class="card-footer">
                <small class="text-muted">Last updated 3 mins ago</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col-4">
          <div class="card-deck">
            <div class="card">
              <img class="card-img-top" src="..." alt="Card image cap" />
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">
                  This is a wider card with supporting text below as a natural
                  lead-in to additional content. This content is a little bit
                  longer.
                </p>
              </div>
              <div class="card-footer">
                <small class="text-muted">Last updated 3 mins ago</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col-4">
          <div class="card-deck">
            <div class="card">
              <img class="card-img-top" src="..." alt="Card image cap" />
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">
                  This is a wider card with supporting text below as a natural
                  lead-in to additional content. This content is a little bit
                  longer.
                </p>
              </div>
              <div class="card-footer">
                <small class="text-muted">Last updated 3 mins ago</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col-4">
          <div class="card-deck">
            <div class="card">
              <img class="card-img-top" src="..." alt="Card image cap" />
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">
                  This is a wider card with supporting text below as a natural
                  lead-in to additional content. This content is a little bit
                  longer.
                </p>
              </div>
              <div class="card-footer">
                <small class="text-muted">Last updated 3 mins ago</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col-4">
          <div class="card-deck">
            <div class="card">
              <img class="card-img-top" src="..." alt="Card image cap" />
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">
                  This is a wider card with supporting text below as a natural
                  lead-in to additional content. This content is a little bit
                  longer.
                </p>
              </div>
              <div class="card-footer">
                <small class="text-muted">Last updated 3 mins ago</small>
              </div>
            </div>
          </div>
        </div>
        <div class="col-4">
          <div class="card-deck">
            <div class="card">
              <img class="card-img-top" src="..." alt="Card image cap" />
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">
                  This is a wider card with supporting text below as a natural
                  lead-in to additional content. This content is a little bit
                  longer.
                </p>
              </div>
              <div class="card-footer">
                <small class="text-muted">Last updated 3 mins ago</small>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="container" id="myProgress" style="display: none;">
      <div class="row">
        <div class="col">
          <div class="card">
            <!-- <img src="img_avatar.png" alt="Avatar" style="width:100%"> -->
            <div class="container">
              <h3>Subject Name</h3>
              <div class="progress">
                <div
                  class="progress-bar progress-bar-striped bg-success"
                  role="progressbar"
                  style="width: 60%" 
                  aria-valuenow="10"
                  aria-valuemin="0"
                  aria-valuemax="100"
                ></div>
              </div>
            </div>
          </div>
        </div>

        <div class="col">
          <div class="card">
            <!-- <img src="img_avatar.png" alt="Avatar" style="width:100%"> -->
            <div class="container">
              <h3>Subject Name</h3>
              <div class="progress">
                <div
                  class="progress-bar progress-bar-striped bg-info"
                  role="progressbar"
                  style="width: 80%"
                  aria-valuenow="10"
                  aria-valuemin="0"
                  aria-valuemax="100"
                ></div>
              </div>
            </div>
          </div>
        </div>

        <div class="col">
          <div class="card">
            <!-- <img src="img_avatar.png" alt="Avatar" style="width:100%"> -->
            <div class="container">
              <h3>Subject Name</h3>
              <div class="progress">
                <div
                  class="progress-bar progress-bar-striped bg-danger"
                  role="progressbar"
                  style="width: 40%"
                  aria-valuenow="10"
                  aria-valuemin="0"
                  aria-valuemax="100"
                ></div>
              </div>
            </div>
          </div>
        </div>

        <div class="col">
          <div class="card">
            <!-- <img src="img_avatar.png" alt="Avatar" style="width:100%"> -->
            <div class="container">
              <h3>Subject Name</h3>
              <div class="progress">
                <div
                  class="progress-bar progress-bar-striped "
                  role="progressbar"
                  style="width: 25%"
                  aria-valuenow="10"
                  aria-valuemin="0"
                  aria-valuemax="100"
                ></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


    <div class="container" id="myAssignments" style="display: none;">
      <div class="row">
        <div class="col">

          <section class="vh-100" style="background-color: #eee;">
            <div class="container py-5 h-100">
              <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col col-lg-9 col-xl-7">
                  <div class="card rounded-3">
                    <div class="card-body p-4">
          
                      <h4 class="text-center my-3 pb-3">My Assignments</h4>
          
                      <!-- <form class="row row-cols-lg-auto g-3 justify-content-center align-items-center mb-4 pb-2">
                        <div class="col-12">
                          <div class="form-outline">
                            <input type="text" id="form1" class="form-control" />
                            <label class="form-label" for="form1">Enter a task here</label>
                          </div>
                        </div>
          
                        <div class="col-12">
                          <button type="submit" class="btn btn-primary">Save</button>
                        </div>
          
                        <div class="col-12">
                          <button type="submit" class="btn btn-warning">Get tasks</button>
                        </div>
                      </form> -->
          
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
          
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>

        </div>
      </div>
    </div>



    <div class="-fluid" id="studyMaterial" style="display: none;">
      <div class="row">
        <div class="col" style="background: #9cdfef;">
          
          <h3 class="text-center m-2">Study Material</h3>
          <table class="table">
            <thead>
              <tr>
                <th scope="col">No.</th>
                <th scope="col">Name</th>
                <th scope="col">Action</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                
                <td>Programming with C</td>
                <td><a class="btn btn-primary" href="#" role="button">View</a></td>
              </tr>
              <tr>
                <th scope="row">1</th>
                <td>Programming with C</td>
                <td><a class="btn btn-primary" href="#" role="button">View</a></td>
              </tr>
              <tr>
                <th scope="row">1</th>
                <td>Programming with C</td>
                <td><a class="btn btn-primary" href="#" role="button">View</a></td>
              </tr>
              <tr>
                <th scope="row">1</th>
                <td>Programming with C</td>
                <td><a class="btn btn-primary" href="#" role="button">View</a></td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    
    <div class="container" id="myCertificates" style="display: none;">
      <div class="row">
        <div class="col" style="background: #4b8290;">
          <h3 class="text-center m-2">Certificates</h3>
          <table class="table ">
            <thead>
              <tr>
                
                <th scope="col">Name</th>
                <th scope="col">Action</th>
              </tr>
            </thead>
            <tbody style="color:#ebfbff">
              <tr>
                <th scope="row">Master C++</th>

                <td><a class="btn btn-primary" href="#" role="button">View</a></td>
              </tr>
             
              <tr>
                <th scope="row">Master C++</th>

                <td><a class="btn btn-primary" href="#" role="button">View</a></td>
              </tr>
             
              <tr>
                <th scope="row">Master C++</th>

                <td><a class="btn btn-primary" href="#" role="button">View</a></td>
              </tr>
             
              <tr>
                <th scope="row">Master C++</th>

                <td><a class="btn btn-primary" href="#" role="button">View</a></td>
              </tr>
             
            </tbody>
          </table>
        </div>
      </div>
    </div>
    
    
    
    <!-- JavaScript Bundle with Popper -->


    <script
      src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
      integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
      crossorigin="anonymous"
    ></script>


    <script>

var a = document.getElementById("myCourses");
var b = document.getElementById("myProgress");
var c = document.getElementById("myAssignments");
var d = document.getElementById("studyMaterial");
var e = document.getElementById("myCertificates");


      function myCourses() {
        
        a.style.display = "block";
        b.style.display = "none";
        c.style.display = "none";
        d.style.display = "none";
        e.style.display = "none";


      }

      function myAssignments() {
        
        a.style.display = "none";
        b.style.display = "none";
        c.style.display = "block";
        d.style.display = "none";
        e.style.display = "none";


      }

      function myProgress() {
        
        a.style.display = "none";
        b.style.display = "block";
        c.style.display = "none";
        d.style.display = "none";
        e.style.display = "none";


      }
      function myStudyMaterials() {
        
        a.style.display = "none";
        b.style.display = "none";
        c.style.display = "none";
        d.style.display = "block";
        e.style.display = "none";


      }

function myCertificates() {
        
        a.style.display = "none";
        b.style.display = "none";
        c.style.display = "none";
        e.style.display = "block";
        d.style.display = "none";


      }
      

    </script>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
      
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
        
        <br><br><br>
          <h1 class="display-3" style="color: white; font-family: 'Brush Script MT', cursive; font-weight: bolder;">Welcome Student</h1>
          <p class="display-5" style="color: white; font-family:  Verdana, sans-serif;">
            "It is the supreme art of the student to awaken joy in creative
            expression and knowledge."
          </p>

         <!--  <div class="row">
            <div class="col-4"></div>
            <div class="col-4 pt-5">
             
             <span class="nU false"
          ><a
            href="https://meet.google.com/new?hs=180&amp;authuser=0"
            
           
            class="btn btn-primary btn-lg btn-block"
           
            >Start meeting</a></span>
          
             
            </div>
          </div> -->
         
          
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
