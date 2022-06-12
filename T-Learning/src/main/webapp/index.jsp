<!DOCTYPE html>
<%@page import="in.co.tlearn.ctl.ORSView"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <title>Tea-Learn</title>
</head>
<body>

    <!--- Central part   ------------------------------------------------------------------------------ -->

    <div class="jumbotron jumbotron-fluid p-3 " style="background-image: linear-gradient( rgba(0, 0, 0, 0.600) ,  rgba(0, 0, 0, 0.600)),
		url('17.jpg')">
      <div class="container">
        <div class="row ">

          <div class="col-md-7 mr-5">
            <h1 class="display-4 text-color" style="color: white;"><B>Limitless Learning at your Fingertips</B></h1>

            <div>
              <p class="lead"  style="color: #335CFF ;font-family: 'Brush Script MT', cursive;; font-weight: bolder;">Become a learner every day !</p>
            <hr class="my-4" style="color: white;">
            <p style=" font-family:  Verdana, sans-serif; color: white;">Teachers are essential when it comes to the education of our children. They dedicate their time and resources to ensuring kids get a comprehensive education, along with teaching them how to think critically, ask important questions, and develop skills they will use for the rest of their lives. Recent events have shown us how dedicated teachers are to providing the best for their students, whether they are teaching them in personal or remotely.</p>
          <p class="lead ">
            <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
          </p>
            </div>  
          </div>
          
           <div class="col-lg-5 text-lg-end">
                      <a href="<%=ORSView.LOGIN_CTL%>" class="btn btn-outline-success mb-0" >Login</a>  &nbsp;             
                      <a href="<%=ORSView.TEACHER_AND_STUDENT_CTL%>" class="btn btn-outline-warning mb-0">SignUp</a>
          
         
          <div class="col-md-8 bg-light rounded-circle">
            <img class="col-md-11" style="background-size: 50px;" src="<%=ORSView.APP_CONTEXT%>/img/jumbotron-img.png" alt="">
          </div>
        </div>    
      </div>
    </div>
     </div>
    <section class="py-0 py-sm-5">
      
	<div class="container">
		<div class="row g-4">
			<!-- Counter item -->
			<div class="col-sm-6 col-xl-3">
				<div class="d-flex justify-content-center align-items-center p-4 rounded-3" style="background-color: #335CFF;">
					<span class="display-6 lh-1 text-warning mb-0">
            <i class="fa fa-laptop" style="color: rgb(255, 255, 255);"></i>
          </span>
					<div class="ms-4 h6 fw-normal mb-0">
						<div class="d-flex">
							<h5 class="purecounter mb-0 fw-bold" data-purecounter-start="0" data-purecounter-end="10" data-purecounter-delay="200" data-purecounter-duration="0">10</h5>
							<span class="mb-0 h5">K</span>
						</div>
						<p class="mb-0">Online Courses</p>
					</div>
				</div>
			</div>

			<!-- Counter item -->
			<div class="col-sm-6 col-xl-3">
				<div class="d-flex justify-content-center align-items-center p-4 bg-blue bg-opacity-10 rounded-3" style="background-color: #f6a739;">
					<span class="display-6 lh-1 text-blue mb-0">
            <i class="fa fa-user-tie" style="color:#33BCFF;background: #000;"></i>
          </span>
					<div class="ms-4 h6 fw-normal mb-0">
						<div class="d-flex">
							<h5 class="purecounter mb-0 fw-bold" data-purecounter-start="0" data-purecounter-end="200" data-purecounter-delay="200" data-purecounter-duration="0">200</h5>
							<span class="mb-0 h5">+</span>
						</div>
						<p class="mb-0">Expert Tutors</p>
					</div>
				</div>
			</div>
			<!-- Counter item -->
			<div class="col-sm-6 col-xl-3">
				<div class="d-flex justify-content-center align-items-center p-4 bg-light  rounded-3">
					<span class="display-6 lh-1 text-purple mb-0">
            <i class="fa fa-group" ></i>
          </span>
					<div class="ms-4 h6 fw-normal mb-0">
						<div class="d-flex">
							<h5 class="purecounter mb-0 fw-bold" data-purecounter-start="0" data-purecounter-end="60" data-purecounter-delay="200" data-purecounter-duration="0">60</h5>
							<span class="mb-0 h5">K+</span>
						</div>
						<p class="mb-0">Online Students</p>
					</div>
				</div>
			</div>
			<!-- Counter item -->
			<div class="col-sm-6 col-xl-3">
				<div class="d-flex justify-content-center align-items-center p-4 bg-info bg-opacity-10 rounded-3">
					<span class="display-6 lh-1 text-info mb-0"><i class="bi bi-patch-check-fill"></i></span>
					<div class="ms-4 h6 fw-normal mb-0">
						<div class="d-flex">
							<h5 class="purecounter mb-0 fw-bold" data-purecounter-start="0" data-purecounter-end="6" data-purecounter-delay="300" data-purecounter-duration="0">6</h5>
							<span class="mb-0 h5">K+</span>
						</div>
						<p class="mb-0">Certified Courses</p>
					</div>
				</div>
			</div>
		</div>
	</div>
    </section>

    <section style="background: #0B1B5B;" class="pt-5 pb-3">
      <div class="container">
        <!-- Title -->
        <div class="row mb-4" style="color: #33BCFF;">
          <div class="col-lg-8 mx-auto text-center ">
            <h2 class="fs-1" style="color: #33BCFF;">Most Popular Courses</h2>
            <p class="mb-0" style="color: aliceblue;">Choose from hundreds of courses from specialist</p>
          </div>
        </div>
    
        <!-- Tabs START -->
        <ul class="nav nav-pills nav-pills-bg-soft justify-content-sm-center mb-4 px-3" id="course-pills-tab" role="tablist" >
          <!-- Tab item -->
          <li class="nav-item me-2 me-sm-5">
            <button class="nav-link mb-2 mb-md-0 active" id="course-pills-tab-1" data-bs-toggle="pill" data-bs-target="#course-pills-tabs-1" type="button" role="tab" aria-controls="course-pills-tabs-1" aria-selected="false">Web Design</button>
          </li>
          <!-- Tab item -->
          <li class="nav-item me-2 me-sm-5">
            <button class="nav-link mb-2 mb-md-0" id="course-pills-tab-2" data-bs-toggle="pill" data-bs-target="#course-pills-tabs-2" type="button" role="tab" aria-controls="course-pills-tabs-2" aria-selected="false">Development</button>
          </li>
          <!-- Tab item -->
          <li class="nav-item me-2 me-sm-5">
            <button class="nav-link mb-2 mb-md-0" id="course-pills-tab-3" data-bs-toggle="pill" data-bs-target="#course-pills-tabs-3" type="button" role="tab" aria-controls="course-pills-tabs-3" aria-selected="false">Graphic Design</button>
          </li>
          <!-- Tab item -->
          <li class="nav-item me-2 me-sm-5">
            <button class="nav-link mb-2 mb-md-0" id="course-pills-tab-4" data-bs-toggle="pill" data-bs-target="#course-pills-tabs-4" type="button" role="tab" aria-controls="course-pills-tabs-4" aria-selected="false">Marketing</button>
          </li>
          <!-- Tab item -->
          <li class="nav-item me-2 me-sm-5">
            <button class="nav-link mb-2 mb-md-0" id="course-pills-tab-5" data-bs-toggle="pill" data-bs-target="#course-pills-tabs-5" type="button" role="tab" aria-controls="course-pills-tabs-5" aria-selected="false">Finance</button>
          </li>
        </ul>
        <!-- Tabs END -->
    
        <!-- Tabs content START -->
        <div class="tab-content " id="course-pills-tabContent">
          <!-- Content START -->
          <div class="tab-pane fade show active " id="course-pills-tabs-1" role="tabpanel" aria-labelledby="course-pills-tab-1">
            <div class="row g-4">
    
              <!-- Card item START -->
              <div class="col-sm-6 col-lg-4 col-xl-3 ">
                <div class="card shadow h-100 ">
                  <!-- Image -->
                  <img src="img/app.jpg" class="card-img-top" alt="course image">
                  <!-- Card body -->
                  <div class="card-body pb-0">
                    <!-- Badge and favorite -->
                    <div class="d-flex justify-content-between mb-2">
                      <a href="#" class="badge bg-purple bg-opacity-10 text-purple">All level</a>
                      <a href="#" class="h6 mb-0"><i class="fa fa-heart"></i></a>
                    </div>
                    <!-- Title -->
                    <h5 class="card-title fw-normal"><a href="<%=ORSView.LOGIN_CTL%>">Sketch from A to Z: for app designer</a></h5>
                    <p class="mb-2 text-truncate-2">Proposal indulged no do sociable he throwing settling.</p>
                    <!-- Rating star -->
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
                      <li class="list-inline-item ms-2 h6 fw-light mb-0">4.0/5.0</li>
                    </ul>
                  </div>
                  <!-- Card footer -->
                  <div class="card-footer pt-0 pb-3">
                    <hr>
                    <div class="d-flex justify-content-between">
                      <span class="h6 fw-light mb-0"><i class="far fa-clock text-danger me-2"></i>12h 56m</span>
                      <span class="h6 fw-light mb-0"><i class="fa fa-table text-orange me-2"></i>15 lectures</span>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Card item END -->
    
              <!-- Card item START -->
              <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="card shadow h-100">
                  <!-- Image -->
                  <img src="img/graphic88.png" class="card-img-top" alt="course image">
                  <div class="card-body pb-0">
                    <!-- Badge and favorite -->
                    <div class="d-flex justify-content-between mb-2">
                      <a href="#" class="badge bg-success bg-opacity-10 text-success">Beginner</a>
                      <a href="#" class="text-danger"><i class="fa fa-heart"></i></a>
                    </div>
                    <!-- Title -->
                    <h5 class="card-title fw-normal"><a href="<%=ORSView.LOGIN_CTL%>">Graphic Design Masterclass</a></h5>
                    <p class="mb-2 text-truncate-2">Rooms oh fully taken by worse do Points afraid but may end Rooms Points afraid but may end Rooms</p>
                    <!-- Rating star -->
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star-half-alt text-warning"></i></li>
                      <li class="list-inline-item ms-2 h6 fw-light mb-0">4.5/5.0</li>
                    </ul>
                  </div>
                  <!-- Card footer -->
                  <div class="card-footer pt-0 pb-3">
                    <hr>
                    <div class="d-flex justify-content-between ">
                      <span class="h6 fw-light mb-0"><i class="far fa-clock text-danger me-2"></i>9h 56m</span>
                      <span class="h6 fw-light mb-0"><i class="fa fa-table text-orange me-2"></i>65 lectures</span>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Card item END -->
    
              <!-- Card item START -->
              <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="card shadow h-100">
                  <!-- Image -->
                  <img src="img/figma.png" class="card-img-top" alt="course image" height="220px">
                  <div class="card-body pb-0">
                    <!-- Badge and favorite -->
                    <div class="d-flex justify-content-between mb-2">
                      <a href="#" class="badge bg-success bg-opacity-10 text-success">Beginner</a>
                      <a href="#" class="h6 fw-light mb-0"><i class="fa fa-heart"></i></a>
                    </div>
                    <!-- Title -->
                    <h5 class="card-title fw-normal"><a href="<%=ORSView.LOGIN_CTL%>">Create a Design System in Figma</a></h5>
                    <p class="mb-2 text-truncate-2">Rooms oh fully taken by worse do. Points afraid but may end afraid but may end.</p>
                    <!-- Rating star -->
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star-half-alt text-warning"></i></li>
                      <li class="list-inline-item ms-2 h6 fw-light mb-0">4.5/5.0</li>
                    </ul>
                  </div>
                  <!-- Card footer -->
                  <div class="card-footer pt-0 pb-3">
                    <hr>
                    <div class="d-flex justify-content-between">
                      <span class="h6 fw-light mb-0"><i class="far fa-clock text-danger me-2"></i>5h 56m</span>
                      <span class="h6 fw-light mb-0"><i class="fa fa-table text-orange me-2"></i>32 lectures</span>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Card item END -->
    
              <!-- Card item START -->
              <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="card shadow h-100">
                  <!-- Image -->
                  <img src="img/native.png" class="card-img-top" alt="course image" height="220px">
                  <div class="card-body pb-0">
                    <!-- Badge and favorite -->
                    <div class="d-flex justify-content-between mb-2">
                      <a href="#" class="badge bg-success bg-opacity-10 text-success">Beginner</a>
                      <a href="#" class="text-danger"><i class="fa fa-heart"></i></a>
                    </div>
                    <!-- Title -->
                    <h5 class="card-title fw-normal"><a href="<%=ORSView.LOGIN_CTL%>">Deep Learning with React-Native </a></h5>
                    <p class="mb-2 text-truncate-2">Far advanced settling say finished raillery. Offered chiefly farther</p>
                    <!-- Rating star -->
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
                      <li class="list-inline-item ms-2 h6 fw-light mb-0">4.0/5.0</li>
                    </ul>
                  </div>
                  <!-- Card footer -->
                  <div class="card-footer pt-0 pb-3">
                    <hr>
                    <div class="d-flex justify-content-between">
                      <span class="h6 fw-light mb-0"><i class="far fa-clock text-danger me-2"></i>18h 56m</span>
                      <span class="h6 fw-light mb-0"><i class="fa fa-table text-orange me-2"></i>99 lectures</span>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Card item END -->
    
              <!-- Card item START -->
              <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="card shadow h-100">
                  <!-- Image -->
                  <img src="img/html.png" class="card-img-top" alt="course image">
                  <div class="card-body pb-0">
                    <!-- Badge and favorite -->
                    <div class="d-flex justify-content-between mb-2">
                      <a href="#" class="badge bg-purple bg-opacity-10 text-purple">All level</a>
                      <a href="#" class="text-danger"><i class="fa fa-heart"></i></a>
                    </div>
                    <!-- Title -->
                    <h5 class="card-title fw-normal"><a href="<%=ORSView.LOGIN_CTL%>">Build Responsive Websites with HTML</a></h5>
                    <p class="mb-2 text-truncate-2">Far advanced settling say finished raillery. Offered chiefly farther</p>
                    <!-- Rating star -->
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
                      <li class="list-inline-item ms-2 h6 fw-light mb-0">4.0/5.0</li>
                    </ul>
                  </div>
                  <!-- Card footer -->
                  <div class="card-footer pt-0 pb-3">
                    <hr>
                    <div class="d-flex justify-content-between">
                      <span class="h6 fw-light mb-0"><i class="far fa-clock text-danger me-2"></i>15h 30m</span>
                      <span class="h6 fw-light mb-0"><i class="fa fa-table text-orange me-2"></i>68 lectures</span>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Card item END -->
    
              <!-- Card item START -->
              <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="card shadow h-100">
                  <!-- Image -->
                  <img src="img/css.png" class="card-img-top" alt="course image">
                  <div class="card-body pb-0">
                    <!-- Badge and favorite -->
                    <div class="d-flex justify-content-between mb-2">
                      <a href="#" class="badge bg-success bg-opacity-10 text-success">Beginner</a>
                      <a href="#" class="h6 fw-light mb-0"><i class="fa fa-heart"></i></a>
                    </div>
                    <!-- Title -->
                    <h5 class="card-title fw-normal"><a href="<%=ORSView.LOGIN_CTL%>">Build Websites with CSS</a></h5>
                    <p class="text-truncate-2 mb-2">Far advanced settling say finished raillery. Offered chiefly farther</p>
                    <!-- Rating star -->
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star-half-alt text-warning"></i></li>
                      <li class="list-inline-item ms-2 h6 fw-light mb-0">4.5/5.0</li>
                    </ul>
                  </div>
                  <!-- Card footer -->
                  <div class="card-footer pt-0 pb-3">
                    <hr>
                    <div class="d-flex justify-content-between mt-2">
                      <span class="h6 fw-light mb-0"><i class="far fa-clock text-danger me-2"></i>36h 30m</span>
                      <span class="h6 fw-light mb-0"><i class="fa fa-table text-orange me-2"></i>72 lectures</span>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Card item END -->
    
              <!-- Card item START -->
              <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="card shadow h-100">
                  <!-- Image -->
                  <img src="img/images.jpg" class="card-img-top" alt="course image" height="170px">
                  <div class="card-body pb-0">
                    <!-- Badge and favorite -->
                    <div class="d-flex justify-content-between mb-2">
                      <a href="#" class="badge bg-purple bg-opacity-10 text-purple">All level</a>
                      <a href="#" class="text-danger"><i class="fa fa-heart"></i></a>
                    </div>
                    <!-- Title -->
                    <h5 class="card-title fw-normal"><a href="<%=ORSView.LOGIN_CTL%>">Learn Invision</a></h5>
                    <p class="mb-2">Arrived off she elderly beloved him Course regard to up he hardly.</p>
                    <!-- Rating star -->
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star-half-alt text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
                      <li class="list-inline-item ms-2 h6 fw-light mb-0">3.5/5.0</li>
                    </ul>
                  </div>
                  <!-- Card footer -->
                  <div class="card-footer pt-0 pb-3">
                    <hr>
                    <div class="d-flex justify-content-between mt-2">
                      <span class="h6 fw-light mb-0"><i class="far fa-clock text-danger me-2"></i>6h 56m</span>
                      <span class="h6 fw-light mb-0"><i class="fa fa-table text-orange me-2"></i>82 lectures</span>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Card item END -->
    
              <!-- Card item START -->
              <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="card shadow h-100">
                  <!-- Image -->
                  <img src="img/javascript.png" class="card-img-top" alt="course image" height="170px">
                  <div class="card-body pb-0">
                    <!-- Badge and favorite -->
                    <div class="d-flex justify-content-between mb-2">
                      <a href="#" class="badge bg-purple bg-opacity-10 text-purple">All level</a>
                      <a href="#" class="h6 fw-light mb-0"><i class="fa fa-heart"></i></a>
                    </div>
                    <!-- Title -->
                    <h5 class="card-title fw-normal"><a href="<%=ORSView.LOGIN_CTL%>">JavaScript: Full Understanding</a></h5>
                    <p class="text-truncate-2 mb-2">Far advanced settling say finished raillery. Offered chiefly farther.</p>
                    <!-- Rating star -->
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item ms-2 h6 fw-light mb-0">5.0/5.0</li>
                    </ul>
                  </div>
                  <!-- Card footer -->
                  <div class="card-footer pt-0 pb-3">
                    <hr>
                    <div class="d-flex justify-content-between">
                      <span class="h6 fw-light mb-0"><i class="far fa-clock text-danger me-2"></i>35h 20m</span>
                      <span class="h6 fw-light mb-0"><i class="fa fa-table text-orange me-2"></i>89 lectures</span>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Card item END -->
            </div> <!-- Row END -->
          </div>
          <!-- Content END -->
    
          <!-- Content START -->
          <div class="tab-pane fade" id="course-pills-tabs-2" role="tabpanel" aria-labelledby="course-pills-tab-2">
            <div class="row g-4">
              <!-- Card item START -->
              <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="card shadow h-100">
                  <!-- Image -->
                  <img src="assets/images/courses/4by3/05.jpg" class="card-img-top" alt="course image">
                  <div class="card-body pb-0">
                    <!-- Badge and favorite -->
                    <div class="d-flex justify-content-between mb-2">
                      <a href="#" class="badge bg-success bg-opacity-10 text-success">Beginner</a>
                      <a href="#" class="h6 fw-light mb-0"><i class="far fa-heart"></i></a>
                    </div>
                    <!-- Title -->
                    <h5 class="card-title fw-normal"><a href="#">The Complete Web Development in python</a></h5>
                    <p class="text-truncate-2 mb-2">Mention Mr manners opinion if garrets enabled.</p>
                    <!-- Rating star -->
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star-half-alt text-warning"></i></li>
                      <li class="list-inline-item ms-2 h6 fw-light mb-0">4.5/5.0</li>
                    </ul>
                  </div>
                  <!-- Card footer -->
                  <div class="card-footer pt-0 pb-3">
                    <hr>
                    <div class="d-flex justify-content-between mt-2">
                      <span class="h6 fw-light mb-0"><i class="far fa-clock text-danger me-2"></i>10h 00m</span>
                      <span class="h6 fw-light mb-0"><i class="fa fa-table text-orange me-2"></i>26 lectures</span>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Card item END -->
    
              <!-- Card item START -->
              <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="card shadow h-100">
                  <!-- Image -->
                  <img src="assets/images/courses/4by3/06.jpg" class="card-img-top" alt="course image">
                  <div class="card-body pb-0">
                    <!-- Badge and favorite -->
                    <div class="d-flex justify-content-between mb-2">
                      <a href="#" class="badge bg-info bg-opacity-10 text-info">Intermediate</a>
                      <a href="#" class="h6 fw-light mb-0"><i class="far fa-heart"></i></a>
                    </div>
                    <!-- Title -->
                    <h5 class="card-title fw-normal"><a href="<%=ORSView.LOGIN_CTL%>">Angular â€“ The Complete Guider</a></h5>
                    <p class="text-truncate-2 mb-2">Rooms oh fully taken by worse do. Points afraid but may end.</p>
                    <!-- Rating star -->
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star-half-alt text-warning"></i></li>
                      <li class="list-inline-item ms-2 h6 fw-light mb-0">4.5/5.0</li>
                    </ul>
                  </div>
                  <!-- Card footer -->
                  <div class="card-footer pt-0 pb-3">
                    <hr>
                    <div class="d-flex justify-content-between mt-2">
                      <span class="h6 fw-light mb-0"><i class="far fa-clock text-danger me-2"></i>9h 32m</span>
                      <span class="h6 fw-light mb-0"><i class="fa fa-table text-orange me-2"></i>42 lectures</span>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Card item END -->
    
              <!-- Card item START -->
              <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="card shadow">
                  <!-- Image -->
                  <img src="assets/images/courses/4by3/07.jpg" class="card-img-top" alt="course image">
                  <div class="card-body pb-0">
                    <!-- Badge and favorite -->
                    <div class="d-flex justify-content-between mb-2">
                      <a href="#" class="badge bg-success bg-opacity-10 text-success">Beginner</a>
                      <a href="#" class="text-danger"><i class="fa fa-heart"></i></a>
                    </div>
                    <!-- Title -->
                    <h5 class="card-title fw-normal"><a href="<%=ORSView.LOGIN_CTL%>">Deep Learning with React-Native</a></h5>
                    <p class="text-truncate-2 mb-2">Far advanced settling say finished raillery. Offered chiefly farther</p>
                    <!-- Rating star -->
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
                      <li class="list-inline-item ms-2 h6 fw-light mb-0">4.0/5.0</li>
                    </ul>
                  </div>
                  <!-- Card footer -->
                  <div class="card-footer pt-0 pb-3">
                    <hr>
                    <div class="d-flex justify-content-between">
                      <span class="h6 fw-light mb-0"><i class="far fa-clock text-danger me-2"></i>18h 56m</span>
                      <span class="h6 fw-light mb-0"><i class="fa fa-table text-orange me-2"></i>99 lectures</span>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Card item END -->
    
              <!-- Card item START -->
              <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="card shadow h-100">
                  <!-- Image -->
                  <img src="assets/images/courses/4by3/09.jpg" class="card-img-top" alt="course image">
                  <div class="card-body pb-0">
                    <!-- Badge and favorite -->
                    <div class="d-flex justify-content-between mb-2">
                      <a href="#" class="badge bg-purple bg-opacity-10 text-purple">All level</a>
                      <a href="#" class="h6 fw-light mb-0"><i class="far fa-heart"></i></a>
                    </div>
                    <!-- Title -->
                    <h5 class="card-title fw-normal"><a href="<%=ORSView.LOGIN_CTL%>">JavaScript: Full Understanding</a></h5>
                    <p class="text-truncate-2 mb-2">Far advanced settling say finished raillery. Offered chiefly farther</p>
                    <!-- Rating star -->
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item ms-2 h6 fw-light mb-0">5.0/5.0</li>
                    </ul>
                  </div>
                  <!-- Card footer -->
                  <div class="card-footer pt-0 pb-3">
                    <hr>
                    <div class="d-flex justify-content-between">
                      <span class="h6 fw-light mb-0"><i class="far fa-clock text-danger me-2"></i>35h 20m</span>
                      <span class="h6 fw-light mb-0"><i class="fa fa-table text-orange me-2"></i>89 lectures</span>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Card item END -->
    
              <!-- Card item START -->
              <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="card shadow h-100">
                  <!-- Image -->
                  <img src="assets/images/courses/4by3/10.jpg" class="card-img-top" alt="course image">
                  <div class="card-body pb-0">
                    <!-- Badge and favorite -->
                    <div class="d-flex justify-content-between mb-2">
                      <a href="#" class="badge bg-info bg-opacity-10 text-info">Intermediate</a>
                      <a href="#" class="text-danger"><i class="fa fa-heart"></i></a>
                    </div>
                    <!-- Title -->
                    <h5 class="card-title fw-normal"><a href="<%=ORSView.LOGIN_CTL%>">Bootstrap 5 From Scratch</a></h5>
                    <p class="text-truncate-2 mb-2">Far advanced settling say finished raillery. Offered chiefly farther</p>
                    <!-- Rating star -->
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star-half-alt text-warning"></i></li>
                      <li class="list-inline-item ms-2 h6 fw-light mb-0">4.5/5.0</li>
                    </ul>
                  </div>
                  <!-- Card footer -->
                  <div class="card-footer pt-0 pb-3">
                    <hr>
                    <div class="d-flex justify-content-between mt-2">
                      <span class="h6 fw-light mb-0"><i class="far fa-clock text-danger me-2"></i>25h 56m</span>
                      <span class="h6 fw-light mb-0"><i class="fa fa-table text-orange me-2"></i>38 lectures</span>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Card item END -->
    
              <!-- Card item START -->
              <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="card shadow h-100">
                  <!-- Image -->
                  <img src="assets/images/courses/4by3/13.jpg" class="card-img-top" alt="course image">
                  <div class="card-body pb-0">
                    <!-- Badge and favorite -->
                    <div class="d-flex justify-content-between mb-2">
                      <a href="#" class="badge bg-success bg-opacity-10 text-success">Beginner</a>
                      <a href="#" class="h6 fw-light mb-0"><i class="far fa-heart"></i></a>
                    </div>
                    <!-- Title -->
                    <h5 class="card-title fw-normal"><a href="<%=ORSView.LOGIN_CTL%>">PHP with - CMS Project</a></h5>
                    <p class="text-truncate-2 mb-2">Far advanced settling say finished raillery. Offered chiefly farther</p>
                    <!-- Rating star -->
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
                      <li class="list-inline-item ms-2 h6 fw-light mb-0">4.0/5.0</li>
                    </ul>
                  </div>
                  <!-- Card footer -->
                  <div class="card-footer pt-0 pb-3">
                    <hr>
                    <div class="d-flex justify-content-between">
                      <span class="h6 fw-light mb-0"><i class="far fa-clock text-danger me-2"></i>21h 22m</span>
                      <span class="h6 fw-light mb-0"><i class="fa fa-table text-orange me-2"></i>30 lectures</span>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Card item END -->
            </div>
          </div>
          <!-- Content END -->
    
          <!-- Content START -->
          <div class="tab-pane fade" id="course-pills-tabs-3" role="tabpanel" aria-labelledby="course-pills-tab-3">
            <div class="row g-4">
              <!-- Card item START -->
              <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="card shadow h-100">
                  <!-- Image -->
                  <img src="assets/images/courses/4by3/08.jpg" class="card-img-top" alt="course image">
                  <div class="card-body pb-0">
                    <!-- Badge and favorite -->
                    <div class="d-flex justify-content-between mb-2">
                      <a href="#" class="badge bg-purple bg-opacity-10 text-purple">All level</a>
                      <a href="#" class="h6 fw-light mb-0"><i class="far fa-heart"></i></a>
                    </div>
                    <!-- Title -->
                    <h5 class="card-title fw-normal"><a href="<%=ORSView.LOGIN_CTL%>">Sketch from A to Z: for app designer</a></h5>
                    <p class="text-truncate-2 mb-2">Proposal indulged no do sociable he throwing settling</p>
                    <!-- Rating star -->
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
                      <li class="list-inline-item ms-2 h6 fw-light mb-0">4.0/5.0</li>
                    </ul>
                  </div>
                  <!-- Card footer -->
                  <div class="card-footer pt-0 pb-3">
                    <hr>
                    <div class="d-flex justify-content-between">
                      <span class="h6 fw-light mb-0"><i class="far fa-clock text-danger me-2"></i>12h 56m</span>
                      <span class="h6 fw-light mb-0"><i class="fa fa-table text-orange me-2"></i>15 lectures</span>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Card item END -->
    
              <!-- Card item START -->
              <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="card shadow h-100">
                  <!-- Image -->
                  <img src="assets/images/courses/4by3/04.jpg" class="card-img-top" alt="course image">
                  <div class="card-body pb-0">
                    <!-- Badge and favorite -->
                    <div class="d-flex justify-content-between mb-2">
                      <a href="#" class="badge bg-purple bg-opacity-10 text-purple">All level</a>
                      <a href="#" class="text-danger"><i class="fa fa-heart"></i></a>
                    </div>
                    <!-- Title -->
                    <h5 class="card-title fw-normal"><a href="<%=ORSView.LOGIN_CTL%>">Learn Invision</a></h5>
                    <p class="mb-2">Arrived off she elderly beloved him Course regard to up he hardly.</p>
                    <!-- Rating star -->
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star-half-alt text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
                      <li class="list-inline-item ms-2 h6 fw-light mb-0">3.5/5.0</li>
                    </ul>
                  </div>
                  <!-- Card footer -->
                  <div class="card-footer pt-0 pb-3">
                    <hr>
                    <div class="d-flex justify-content-between mt-2">
                      <span class="h6 fw-light mb-0"><i class="far fa-clock text-danger me-2"></i>6h 56m</span>
                      <span class="h6 fw-light mb-0"><i class="fa fa-table text-orange me-2"></i>82 lectures</span>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Card item END -->
    
              <!-- Card item START -->
              <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="card shadow h-100">
                  <!-- Image -->
                  <img src="assets/images/courses/4by3/02.jpg" class="card-img-top" alt="course image">
                  <div class="card-body pb-0">
                    <!-- Badge and favorite -->
                    <div class="d-flex justify-content-between mb-2">
                      <a href="#" class="badge bg-success bg-opacity-10 text-success">Beginner</a>
                      <a href="#" class="text-danger"><i class="fa fa-heart"></i></a>
                    </div>
                    <!-- Title -->
                    <h5 class="card-title fw-normal"><a href="<%=ORSView.LOGIN_CTL%>">Graphic Design Masterclass</a></h5>
                    <p class="text-truncate-2 mb-2">Rooms oh fully taken by worse do. Points afraid but may end.</p>
                    <!-- Rating star -->
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star-half-alt text-warning"></i></li>
                      <li class="list-inline-item ms-2 h6 fw-light mb-0">4.5/5.0</li>
                    </ul>
                  </div>
                  <!-- Card footer -->
                  <div class="card-footer pt-0 pb-3">
                    <hr>
                    <div class="d-flex justify-content-between">
                      <span class="h6 fw-light mb-0"><i class="far fa-clock text-danger me-2"></i>9h 56m</span>
                      <span class="h6 fw-light mb-0"><i class="fa fa-table text-orange me-2"></i>65 lectures</span>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Card item END -->
    
              <!-- Card item START -->
              <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="card shadow h-100">
                  <!-- Image -->
                  <img src="assets/images/courses/4by3/03.jpg" class="card-img-top" alt="course image">
                  <div class="card-body pb-0">
                    <!-- Badge and favorite -->
                    <div class="d-flex justify-content-between mb-2">
                      <a href="#" class="badge bg-success bg-opacity-10 text-success">Beginner</a>
                      <a href="#" class="h6 fw-light mb-0"><i class="far fa-heart"></i></a>
                    </div>
                    <!-- Title -->
                    <h5 class="card-title fw-normal"><a href="<%=ORSView.LOGIN_CTL%>">Create a Design System in Figma</a></h5>
                    <p class="text-truncate-2 mb-2">Rooms oh fully taken by worse do. Points afraid but may end.</p>
                    <!-- Rating star -->
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star-half-alt text-warning"></i></li>
                      <li class="list-inline-item ms-2 h6 fw-light mb-0">4.5/5.0</li>
                    </ul>
                  </div>
                  <!-- Card footer -->
                  <div class="card-footer pt-0 pb-3">
                    <hr>
                    <div class="d-flex justify-content-between">
                      <span class="h6 fw-light mb-0"><i class="far fa-clock text-danger me-2"></i>5h 56m</span>
                      <span class="h6 fw-light mb-0"><i class="fa fa-table text-orange me-2"></i>32 lectures</span>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Card item END -->
            </div>
          </div>
          <!-- Content END -->
    
          <!-- Content START -->
          <div class="tab-pane fade" id="course-pills-tabs-4" role="tabpanel" aria-labelledby="course-pills-tab-4">
            <div class="row g-4">
              <!-- Card item START -->
              <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="card shadow h-100">
                  <!-- Image -->
                  <img src="assets/images/courses/4by3/01.jpg" class="card-img-top" alt="course image">
                  <div class="card-body pb-0">
                    <!-- Badge and favorite -->
                    <div class="d-flex justify-content-between mb-2">
                      <a href="#" class="badge bg-success bg-opacity-10 text-success">Beginner</a>
                      <a href="#" class="text-danger"><i class="fa fa-heart"></i></a>
                    </div>
                    <!-- Title -->
                    <h5 class="card-title fw-normal"><a href="<%=ORSView.LOGIN_CTL%>">Digital Marketing Masterclass</a></h5>
                    <p class="text-truncate-2 mb-2">Delivered dejection necessary objection do Mr prevailed.</p>
                    <!-- Rating star -->
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star-half-alt text-warning"></i></li>
                      <li class="list-inline-item ms-2 h6 fw-light mb-0">4.5/5.0</li>
                    </ul>
                  </div>
                  <!-- Card footer -->
                  <div class="card-footer pt-0 pb-3">
                    <hr>
                    <div class="d-flex justify-content-between">
                      <span class="h6 fw-light mb-0"><i class="far fa-clock text-danger me-2"></i>6h 56m</span>
                      <span class="h6 fw-light mb-0"><i class="fa fa-table text-orange me-2"></i>82 lectures</span>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Card item END -->
    
              <!-- Card item START -->
              <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="card shadow h-100">
                  <!-- Image -->
                  <img src="assets/images/courses/4by3/08.jpg" class="card-img-top" alt="course image">
                  <div class="card-body pb-0">
                    <!-- Badge and favorite -->
                    <div class="d-flex justify-content-between mb-2">
                      <a href="#" class="badge bg-purple bg-opacity-10 text-purple">All level</a>
                      <a href="#" class="h6 fw-light mb-0"><i class="far fa-heart"></i></a>
                    </div>
                    <!-- Title -->
                    <h5 class="card-title fw-normal"><a href="<%=ORSView.LOGIN_CTL%>">Sketch from A to Z: for app designer</a></h5>
                    <p class="text-truncate-2 mb-2">Proposal indulged no do sociable he throwing settling.</p>
                    <!-- Rating star -->
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
                      <li class="list-inline-item ms-2 h6 fw-light mb-0">4.0/5.0</li>
                    </ul>
                  </div>	
                  <!-- Card footer -->
                  <div class="card-footer pt-0 pb-3">
                    <hr>
                    <div class="d-flex justify-content-between">
                      <span class="h6 fw-light mb-0"><i class="far fa-clock text-danger me-2"></i>12h 56m</span>
                      <span class="h6 fw-light mb-0"><i class="fa fa-table text-orange me-2"></i>15 lectures</span>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Card item END -->
            </div>
          </div>
          <!-- Content END -->
    
          <!-- Content START -->
          <div class="tab-pane fade" id="course-pills-tabs-5" role="tabpanel" aria-labelledby="course-pills-tab-5">
            <div class="row g-4">
              <!-- Card item START -->
              <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="card shadow h-100">
                  <!-- Image -->
                  <img src="assets/images/courses/4by3/04.jpg" class="card-img-top" alt="course image">
                  <div class="card-body pb-0">
                    <!-- Badge and favorite -->
                    <div class="d-flex justify-content-between mb-2">
                      <a href="#" class="badge bg-purple bg-opacity-10 text-purple">All level</a>
                      <a href="#" class="text-danger"><i class="fa fa-heart"></i></a>
                    </div>
                    <!-- Title -->
                    <h5 class="card-title fw-normal"><a href="<%=ORSView.LOGIN_CTL%>">Learn Invision</a></h5>
                    <p class="text-truncate-2 mb-2">Arrived off she elderly beloved him Course regard to up he hardly.</p>
                    <!-- Rating star -->
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star-half-alt text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="far fa-star text-warning"></i></li>
                      <li class="list-inline-item ms-2 h6 fw-light mb-0">3.5/5.0</li>
                    </ul>
                  </div>
                  <!-- Card footer -->
                  <div class="card-footer pt-0 pb-3">
                    <hr>
                    <div class="d-flex justify-content-between">
                      <span class="h6 fw-light mb-0"><i class="far fa-clock text-danger me-2"></i>6h 56m</span>
                      <span class="h6 fw-light mb-0"><i class="fa fa-table text-orange me-2"></i>82 lectures</span>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Card item END -->
    
              <!-- Card item START -->
              <div class="col-sm-6 col-lg-4 col-xl-3">
                <div class="card shadow h-100">
                  <!-- Image -->
                  <img src="assets/images/courses/4by3/09.jpg" class="card-img-top" alt="course image">
                  <div class="card-body pb-0">
                    <!-- Badge and favorite -->
                    <div class="d-flex justify-content-between mb-2">
                      <a href="#" class="badge bg-purple bg-opacity-10 text-purple">All level</a>
                      <a href="#" class="h6 fw-light mb-0"><i class="far fa-heart"></i></a>
                    </div>
                    <!-- Title -->
                    <h5 class="card-title fw-normal"><a href="<%=ORSView.LOGIN_CTL%>">JavaScript: Full Understanding</a></h5>
                    <p class="text-truncate-2 mb-2">Far advanced settling say finished raillery. Offered chiefly farther.</p>
                    <!-- Rating star -->
                    <ul class="list-inline mb-0">
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item me-0 small"><i class="fa fa-star text-warning"></i></li>
                      <li class="list-inline-item ms-2 h6 fw-light mb-0">5.0/5.0</li>
                    </ul>
                  </div>
                  <!-- Card footer -->
                  <div class="card-footer pt-0 pb-3">
                    <hr>
                    <div class="d-flex justify-content-between">
                      <span class="h6 fw-light mb-0"><i class="fa fa-clock text-danger me-2"></i>35h 20m</span>
                      <span class="h6 fw-light mb-0"><i class="fa fa-table text-orange me-2"></i>89 lectures</span>
                    </div>
                  </div>
                </div>
              </div>
              <!-- Card item END -->
            </div>
          </div>
          <!-- Content END -->
        </div>
        <!-- Tabs content END -->
      </div>
    </section>

    <section class="pt-0 pt-lg-5 mb-5">
      <div class="container position-relative">
        <!-- SVG decoration START -->
        <figure class="position-absolute top-50 start-50 translate-middle ms-2">
          <svg>
            <path class="fill-white opacity-4" d="m496 22.999c0 10.493-8.506 18.999-18.999 18.999s-19-8.506-19-18.999 8.507-18.999 19-18.999 18.999 8.506 18.999 18.999z"></path>
            <path class="fill-white opacity-4" d="m775 102.5c0 5.799-4.701 10.5-10.5 10.5-5.798 0-10.499-4.701-10.499-10.5 0-5.798 4.701-10.499 10.499-10.499 5.799 0 10.5 4.701 10.5 10.499z"></path>
            <path class="fill-white opacity-4" d="m192 102c0 6.626-5.373 11.999-12 11.999s-11.999-5.373-11.999-11.999c0-6.628 5.372-12 11.999-12s12 5.372 12 12z"></path>
            <path class="fill-white opacity-4" d="m20.499 10.25c0 5.66-4.589 10.249-10.25 10.249-5.66 0-10.249-4.589-10.249-10.249-0-5.661 4.589-10.25 10.249-10.25 5.661-0 10.25 4.589 10.25 10.25z"></path>
          </svg>
        </figure>
        <!-- SVG decoration END -->
        
        <div class="row">
          <div class="col-12">
            <div class="p-4 p-sm-5 rounded-3" style="background: #1E81B6 ;">
              <div class="row position-relative">
                <!-- Svg decoration -->
                <figure  class="fill-white opacity-1 position-absolute top-50 start-0 translate-middle-y">
                  <svg width="141px" height="141px">
                    <path d="M140.520,70.258 C140.520,109.064 109.062,140.519 70.258,140.519 C31.454,140.519 -0.004,109.064 -0.004,70.258 C-0.004,31.455 31.454,-0.003 70.258,-0.003 C109.062,-0.003 140.520,31.455 140.520,70.258 Z"></path>
                  </svg>
                </figure>
                <!-- Action box -->
                <div class="col-11 mx-auto position-relative">
                  <div class="row align-items-center">
                    <!-- Title -->
                    <div class="col-lg-7">
                      <h3 class="text-white text-center">Become an Instructor!</h3>
                      <p class="text-white text-center mb-3 mb-lg-0">Teaching is a very noble profession that shapes the character, caliber, and future of an individual. If the people remember me as a good teacher that will be the biggest honor for me.</p>
                    </div>
                    <!-- Content and input -->
                    <div class="col-lg-5 text-lg-end">
                      <a href="<%=ORSView.TEACHER_REGISTRATION_CTL%>" class="btn btn-outline-warning mb-0">Start Teaching Today</a>
                    </div>
                  </div>
                </div>
              </div> <!-- Row END -->
            </div>
          </div>
        </div> <!-- Row END -->
      </div>
    </section>


    <section style="background: rgb(8, 40, 84); color: aliceblue;">
      
        <footer class=" text-center text-lg-start">
          <!-- Grid container -->
          <div class="container p-4">
            <!--Grid row-->
            <div class="row">
              <!--Grid column-->
              <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                <h5 class="text-uppercase">Development</h5>
        
                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="#!" class="text-secondary">Python</a>
                  </li>
                  <li>
                    <a href="#!" class="text-secondary">Java</a>
                  </li>
                  <li>
                    <a href="#!" class="text-secondary">Web Development</a>
                  </li>
                  <li>
                    <a href="#!" class="text-secondary">Machine Learning</a>
                  </li>
                </ul>
              </div>
              <!--Grid column-->
        
              <!--Grid column-->
              <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                <h5 class="text-uppercase mb-0">Business</h5>
        
                <ul class="list-unstyled">
                  <li>
                    <a href="#!" class="text-secondary">Financial Analysis</a>
                  </li>
                  <li>
                    <a href="#!" class="text-secondary">SQL</a>
                  </li>
                  <li>
                    <a href="#!" class="text-secondary">PMP</a>
                  </li>
                  
                </ul>
              </div>
              <!--Grid column-->
        
              <!--Grid column-->
              <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                <h5 class="text-uppercase">IT and Software</h5>
        
                <ul class="list-unstyled mb-0">
                  <li>
                    <a href="#!" class="text-secondary">AWS Certification</a>
                  </li>
                  <li>
                    <a href="#!" class="text-secondary">Ethical Hacking</a>
                  </li>
                  <li>
                    <a href="#!" class="text-secondary">Cyber Security</a>
                  </li>
                 
                </ul>
              </div>
              <!--Grid column-->
        
              <!--Grid column-->
              <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                <h5 class="text-uppercase mb-0">Design</h5>
        
                <ul class="list-unstyled">
                  <li>
                    <a href="#!" class="text-secondary">Photoshop</a>
                  </li>
                  <li>
                    <a href="#!" class="text-secondary">Graphic Design</a>
                  </li>
                  <li>
                    <a href="#!" class="text-secondary">Drawing</a>
                  </li>
                  
                </ul>
              </div>
              <!--Grid column-->
            </div>
            <!--Grid row-->
          </div>
          <!-- Grid container -->
          
          <div class="col-md-6" align="center">
          <div class="alert alert-primary" role="alert">
  Want To Explore More? Login To T-Learn <a href="<%=ORSView.LOGIN_CTL %>" class="alert-link">,click here to login!</a>.
</div></div>
        
          <!-- Copyright -->
         <br>
<br>

          <!-- Copyright -->
        
      </footer>
    </section>

      

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
</body>
</html>