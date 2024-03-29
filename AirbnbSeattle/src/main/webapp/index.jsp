<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
  href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.3.0/mdb.min.css"
  rel="stylesheet"
  />

<link
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
  rel="stylesheet"
/>
<link
  href="css/main.css"
  rel="stylesheet"
/>
<link
  href="css/responsive.css"
  rel="stylesheet"
/>
<title>SeattleTraveler</title>
</head>
<body>
<nav class="navbar navbar-expand-lg sticky-top navbar-light bg-light">
  <!-- Container wrapper -->
  <div class="container-fluid">
    <!-- Toggle button -->
    <button
      class="navbar-toggler"
      type="button"
      data-mdb-toggle="collapse"
      data-mdb-target="#navbarSupportedContent"
      aria-controls="navbarSupportedContent"
      aria-expanded="false"
      aria-label="Toggle navigation"
    >
      <i class="fas fa-bars"></i>
    </button>

    <!-- Collapsible wrapper -->
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <!-- Navbar brand -->
      <a class="navbar-brand mt-2 mt-lg-0" href="#">
        Seattle Traveler
      </a>
      <!-- Left links -->
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="#Intrduction">Introduction</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#AboutUs">About Us</a>
        </li>
      </ul>
      <!-- Left links -->
    </div>
    <!-- Collapsible wrapper -->
  </div>
  <!-- Container wrapper -->
</nav>
<!-- Navbar -->
<div class="bg-image" style="height:100vh;">
  <img src="img/seattle-bg.jpg" class="w-100" />
  <div class="mask" style="background: linear-gradient(45deg, rgba(29, 236, 197, 0.5), rgba(91, 14, 214, 0.5) 100%);">
  <div class="d-flex flex-column  justify-content-center align-items-center h-100">
  	  <h1 class="text-white" >Welcome to Seattle Traveler</h1>
      <h6 class="text-white">You can find the Best traveling advice right here</h6>
    </div>
  </div>
</div>

<div class="container text-center" style="padding-top:2vw; height:70vh;" id="Introduction">
	<!-- top property with most review -->
	<h3>Introduction</h3>
	<div class="row">
	  <div class="col-md-4">
	  		<p aria-hidden="true">
			  Accommodation
			</p>	  
	  		<img
			  src="img/hotel-bg.jpg"
			  class="img-thumbnail"
			  alt="Hollywood Sign on The Hill"
			  style="width:50vw; height:17vw;"
			/>
	  		<p>4,883 properties 
			We offer more than 4800 reported accommodation listings in Seattle area.
			</p>	  
	  </div>
	  <div class="col-md-4">
	  		<p aria-hidden="true">
			  Host
			</p>
	  		<img
			  src="img/host.jpg"
			  class="img-thumbnail"
			  alt="Hollywood Sign on The Hill"
			  style="width:50vw; height:17vw;"
			/>					  
			<p>2,734 hosts 
			We provide more than 2700 reported hosts in Seattle area.
			</p> 
		  
	  </div>
	  <div class="col-md-4">
	  		<p aria-hidden="true">
			  Experience Seattle
			</p>
	  		<img
			  src="img/ThingsToDo.jpg"
			  class="img-thumbnail"
			  alt="Hollywood Sign on The Hill"
			  style="width:50vw; height:17vw;"
			/>			
	  		<p>4,299 restaurants & 396 parks
	  		Enjoy food and nature in Seattle.
			</p>	  
						
	  </div>
	</div>
</div>



<div class="container" style="padding-top:2vw; height: 50vh;">
	<div class="row">
		<div class="card col-md-6 text-center" style="width:30vw; margin: auto;">
		  <div class="card-body">
		    <h5 class="card-title">User</h5>
		    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		    <a href="findusers" class="btn btn-primary">Enter to Find User</a>
		    <p><a href="usercreate" > New user? create here</a></p>
		  </div>
		</div>
		<div class="card col-md-6 text-center" style="width:30vw; margin: auto;">
		  <div class="card-body">
		    <h5 class="card-title">Host</h5>
		    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		    <a href="findhosts" class="btn btn-primary">Find Host</a>
		    <p><a href="hostcreate" > New host? create here</a></p>
		  </div>
		</div>
	</div>
</div>


<div class="container text-center" style="padding-top:2vw; height:50vh;" id="AboutUs">
	<!-- top property with most review -->
	<h3>About Us</h3>
	<p>Seattle Traveler is an online travel agency that combines rentals, and things to do searches all at one place, provides attraction suggestions within the Greater Seattle area, and sends out email subscriptions for travelers, Seattle Visitors or anyone who need a short term stay and are currently using several other platforms to search for their next accommodation. Our mission is to make it easier for travelers to experience Seattle. We help travelers to find the right pathways through millions of possibilities to reach the best possible outcome.</p>
</div>


<!-- Footer -->
<footer class="bg-white text-center">
  <!-- Grid container -->
  <div class="container p-4">
    <!-- Section: Social media -->
    <section class="mb-4">
      <!-- Facebook -->
      <a class="me-4 text-reset" href="#!" role="button"
        ><i class="fab fa-facebook-f"></i
      ></a>

      <!-- Twitter -->
      <a class="me-4 text-reset" href="#!" role="button"
        ><i class="fab fa-twitter"></i
      ></a>

      <!-- Google -->
      <a class="me-4 text-reset" href="#!" role="button"
        ><i class="fab fa-google"></i
      ></a>

      <!-- Instagram -->
      <a class="me-4 text-reset" href="#!" role="button"
        ><i class="fab fa-instagram"></i
      ></a>

      <!-- Linkedin -->
      <a class="me-4 text-reset1" href="#!" role="button"
        ><i class="fab fa-linkedin-in"></i
      ></a>

      <!-- Github -->
      <a class="me-4 text-reset" href="#!" role="button"
        ><i class="fab fa-github"></i
      ></a>
    </section>
    <!-- Section: Social media -->

    <!-- Section: Form -->
    <section class="">
      <form action="">
        <!--Grid row-->
        <div class="row d-flex justify-content-center">
          <!--Grid column-->
          <div class="col-auto">
            <p class="pt-2">
              <strong>Sign up for our newsletter</strong>
            </p>
          </div>
          <!--Grid column-->

          <!--Grid column-->
          <div class="col-md-5 col-12">
            <!-- Email input -->
            <div class="form-outline mb-4">
              <input type="email" id="form5Example21" class="form-control" />
              <label class="form-label" for="form5Example21">Email address</label>
            </div>
          </div>
          <!--Grid column-->

          <!--Grid column-->
          <div class="col-auto">
            <!-- Submit button -->
            <button type="submit" class="btn btn-primary mb-4">
              Subscribe
            </button>
          </div>
          <!--Grid column-->
        </div>
        <!--Grid row-->
      </form>
    </section>
    <!-- Section: Form -->


    <!-- Section: Links -->
    <section class="">
      <!--Grid row-->
      <div class="row">
        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase">Links</h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="#!" >Link 1</a>
            </li>
            <li>
              <a href="#!" >Link 2</a>
            </li>
            <li>
              <a href="#!" >Link 3</a>
            </li>
            <li>
              <a href="#!" >Link 4</a>
            </li>
          </ul>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase">Links</h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="#!" >Link 1</a>
            </li>
            <li>
              <a href="#!" >Link 2</a>
            </li>
            <li>
              <a href="#!" >Link 3</a>
            </li>
            <li>
              <a href="#!" >Link 4</a>
            </li>
          </ul>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase">Links</h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="#!" >Link 1</a>
            </li>
            <li>
              <a href="#!" >Link 2</a>
            </li>
            <li>
              <a href="#!" >Link 3</a>
            </li>
            <li>
              <a href="#!" >Link 4</a>
            </li>
          </ul>
        </div>
        <!--Grid column-->

        <!--Grid column-->
        <div class="col-lg-3 col-md-6 mb-4 mb-md-0">
          <h5 class="text-uppercase">Links</h5>

          <ul class="list-unstyled mb-0">
            <li>
              <a href="#!" >Link 1</a>
            </li>
            <li>
              <a href="#!" >Link 2</a>
            </li>
            <li>
              <a href="#!" >Link 3</a>
            </li>
            <li>
              <a href="#!" >Link 4</a>
            </li>
          </ul>
        </div>
        <!--Grid column-->
      </div>
      <!--Grid row-->
    </section>
    <!-- Section: Links -->
  </div>
  <!-- Grid container -->

  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
    � 2022 Copyright:
    <a  href="">SeattleTraveler.com</a>
  </div>
  <!-- Copyright -->
</footer>
<!-- Footer -->

</body>
<script
  type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.3.0/mdb.min.js"
></script>
<script
  type="text/javascript"
  src="js/main.js"
></script>
</html>
