
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">


</head>
<body>     
     <header>
        <div>
        <video src="video" autoplay loop muted class="object-fit-contain" ></video>
    </div>
            
  
    <nav class="navbar navbar-expand-lg navbar-light bg-dark px-4  fixed-top p-2" data-bs-theme="dark">
      <div class="container-fluid ">
        <a class="navbar-brand fs-3" href="#">Algorithm-<span class="text-primary">Visualizer</span></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse margin-end " id="navbarSupportedContent">
          <ul class="navbar-nav ms-auto mb-2 mb-lg-0 fs-5">
            <li class="nav-item">
              <a class="nav-link active text-primary" aria-current="page" href="#">Home</a>
            </li>
            <li class="nav-item ">
              <a class="nav-link " href="#about" >About</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#Services" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Algorithms 
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown text-center">
                <li><a class="dropdown-item" href="Selection.html">Selection Sort</a></li>
                <li><a class="dropdown-item" href="BubbleSort.jsp">Bubble Sort</a></li>
                 <li><a class="dropdown-item" href="merge.html">Merge Sort</a></li>
                  
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="linear.html">Linear Search</a></li>
                <li><a class="dropdown-item" href="binary.html">Binary Search</a></li>
              
              </ul>
            </li>
            <li class="nav-item ">
              <a class="nav-link " href="#Team">Our Team</a>
            </li>
            <ul class="navbar-nav ms-auto">
              <li class="nav-item">
                <a class="nav-link" href="ChangePassword.jsp">ChangePassword</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="Profile.jsp">Profile</a>
              </li>
            </ul>
          </ul>
          
        </div>
      </div>
    </nav>
       </header>
       <section class="about my-5" id="about">
        <div class="container  text-center" >
          <h1 class="fs-4 " data-aos="fade-up" data-aos-offset="500">About <span class="text-primary">Us</span></h1>
        </div>
      <hr class="w-25 m-auto">
      <div class="container">
      <div class="row my-6">
        <div class="col-sm-12 col-md-6 col-lg-6 col-12 ms-5 my-5 ">
        <div> <h1 class="fs-4" data-aos="fade-right" data-aos-offset="500"> What do <span class="text-primary">you Want To Know?</span></h1></div>
       
        <div>
        <p clas="p-4" data-aos="fade-left" data-aos-offset="500"> An algorithm visualizer project involves creating a tool or application that visually represents the execution of various algorithms. The goal is to help users better understand how algorithms work by providing a step-by-step visualization of their execution.</p> 
        </div>
      
      <div class="accordion mt-6" id="accordionExample ">
        <div class="accordion-item" data-aos="fade-up-right" data-aos-offset="500">
          <h2 class="accordion-header" id="headingOne">
            <button data-aos="flip-down" data-aos-offset="500" class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
              User Interface (UI)
            </button>
          </h2>
          <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
            <div class="accordion-body" data-aos="fade-up" data-aos-offset="500">
              <strong>This is the first Term of project.</strong> Design an intuitive and user-friendly interface to allow users to interact with the visualizer.
              Include controls for selecting different algorithms, input data, and adjusting visualization speed <code>.Algorithm Visualizer</code>, though the transition does limit overflow.
            </div>
          </div>
        </div>
        <div class="accordion-item">
          <h2 class="accordion-header" id="headingTwo" data-aos="fade-down" data-aos-offset="500">
            <button data-aos="flip-up" data-aos-offset="500" class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
              Visualization Techniques:
            </button>
          </h2>
          <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
            <div class="accordion-body" data-aos="zoom-in" data-aos-offset="500">
              <strong>This is the second Term of project.</strong> Choose effective visualization techniques to represent the algorithm steps. Enable users to modify input data on the fly to observe how the algorithm behaves with different inputs. <code>.Algorithm Visualizer</code>, though the transition does limit overflow.
            </div>
          </div>
        </div>
        <div class="accordion-item">
          <h2 class="accordion-header" id="headingThree">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree" data-aos="flip-up" data-aos-offset="500">
              Open Source and Collaboration:
            </button>
          </h2>
          <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
            <div class="accordion-body" data-aos="flip-up" data-aos-offset="500">
              <strong>This is the third item's Of Project.</strong> Consider making the project open source to encourage collaboration and contributions from the community . Use version control systems like Git to manage the project and track changes. <code>.Algorithm Visualizer</code>, though the transition does limit overflow.
            </div>
          </div>
        </div>
      </div>
    </div>
    
        <div class="col m-auto text-end">
         
          <img src="algorithm" class="img-fluid img-thumbnail  " data-aos="fade-up" data-aos-offset="500">
        
        </div>
    
      </div>
    </div>
    
      
    
       </section>
       <section class="Ourteam" id="Team">
        <div class="container">
          <div  class=" text-center" >
            <h1 class="fs-4 " data-aos="flip-down" data-aos-offset="500">Our <span class="text-primary">Team</span></h1>
          </div>
        <hr class="w-25 m-auto">
        <div class="container my-5">
          <div class="row">
            <div class="col-sm-12 col-md-3 col-lg-3 col-12 p-4">
              <div class="card">
                <div class="card-body text-center">
                  <img src="ankit.jpeg"  data-aos="flip-left" data-aos-offset="500" class="img-fluid rounded-circle border border-primary p-2">
                  <h5 class="card-title text-center">Ankit Chhalotra</h5>
                  <p class="card-text text-center"><span class="text-primary ">Backend Developer</span></p>
                  <a href="#" class="btn btn-primary text-center">Read More</a>
                </div>
              </div>
            </div>
            <div class="col-sm-12 col-md-3 col-lg-3 col-12 p-4">
              <div class="card">
                <div class="card-body text-center ">
                  <img src="demo11.avif" class="img-fluid rounded-circle border border-success p-2 ">
                  <h5 class="card-title">Anshul Singh Panwar</h5>
                  <p class="card-text"><span class="text-primary ">Frontend Developer </span></p>
                  <a href="#" class="btn btn-primary">Read More</a>
                </div>
              </div>
            </div>
            <div class="col-sm-12 col-md-3 col-lg-3 col-12 p-4">
              <div class="card">
                <div class="card-body text-center">
                  <img src="anshul.jpg" class="img-fluid rounded-circle border border-primary p-2">
                  <h5 class="card-title">Anshul Agrawal</h5>
                  <p class="card-text"><span class="text-primary ">Data Scientist</span></p>
                  <a href="#" class="btn btn-primary">Read More</a>
                </div>
              </div>
            </div>
            <div class="col-sm-12 col-md-3 col-lg-3 col-12 p-4">
              <div class="card">
                <div class="card-body text-center">
                  <img src="demo11.avif" class="img-fluid rounded-circle border border-primary p-2">
                  <h5 class="card-title">Arun Chouhan</h5>
                  <p class="card-text"><span class="text-primary ">Backend Devloper</span></p>
                  <a href="#" class="btn btn-primary">Read More</a>
                </div>
              </div>
            </div>
          </div>
        </div>
    
    
        </div>
    
       </section >
       <section>
           <footer class="bg-dark text-white text-center text-lg-start mt-auto">
        <div class="container p-4">
            <!-- Section: Social media -->
            <section class="mb-4">
                <a class="btn btn-outline-light btn-floating m-1" href="#" role="button"><i class="fab fa-facebook-f"></i></a>
                <a class="btn btn-outline-light btn-floating m-1" href="#" role="button"><i class="fab fa-twitter"></i></a>
                <a class="btn btn-outline-light btn-floating m-1" href="#" role="button"><i class="fab fa-google"></i></a>
                <a class="btn btn-outline-light btn-floating m-1" href="#" role="button"><i class="fab fa-instagram"></i></a>
                <a class="btn btn-outline-light btn-floating m-1" href="#" role="button"><i class="fab fa-linkedin-in"></i></a>
                <a class="btn btn-outline-light btn-floating m-1" href="#" role="button"><i class="fab fa-github"></i></a>
            </section>
            <!-- Section: Text -->
            <section class="mb-4">
                <p>
                    Algorithm Visualizer is a tool designed to help you understand the intricate workings of various algorithms through visual representation. Whether you're a student, educator, or professional, our visualizer makes complex algorithms more accessible and easier to understand.
                </p>
            </section>
            <!-- Section: Links -->
            <section class="">
                <div class="row">
                    <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                        <h5 class="text-uppercase">Company</h5>
                        <ul class="list-unstyled mb-0">
                            <li><a href="#!" class="text-white">About Us</a></li>
                            <li><a href="#!" class="text-white">Contact</a></li>
                            <li><a href="#!" class="text-white">Careers</a></li>
                            <li><a href="#!" class="text-white">Blog</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                        <h5 class="text-uppercase">Support</h5>
                        <ul class="list-unstyled mb-0">
                            <li><a href="#!" class="text-white">Help Center</a></li>
                            <li><a href="#!" class="text-white">Privacy Policy</a></li>
                            <li><a href="#!" class="text-white">Terms of Service</a></li>
                            <li><a href="#!" class="text-white">FAQs</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                        <h5 class="text-uppercase">Products</h5>
                        <ul class="list-unstyled mb-0">
                            <li><a href="#!" class="text-white">Algorithm Visualizer</a></li>
                            <li><a href="#!" class="text-white">Educational Tools</a></li>
                            <li><a href="#!" class="text-white">Professional Services</a></li>
                            <li><a href="#!" class="text-white">Consulting</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
                        <h5 class="text-uppercase">Follow Us</h5>
                        <ul class="list-unstyled mb-0">
                            <li><a href="#!" class="text-white">Facebook</a></li>
                            <li><a href="#!" class="text-white">Twitter</a></li>
                            <li><a href="#!" class="text-white">Instagram</a></li>
                            <li><a href="#!" class="text-white">LinkedIn</a></li>
                        </ul>
                    </div>
                </div>
            </section>
        </div>
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
            © 2024 Algorithm Visualizer. All rights reserved.
        </div>
    </footer>

      
       
      
        
        
       <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
       <script>
        AOS.init();
      </script>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
   
</body>
</html>