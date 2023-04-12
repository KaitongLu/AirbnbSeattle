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
<title>Find a User</title>
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
      <a class="navbar-brand mt-2 mt-lg-0" href="/AirbnbSeattle">
        Seattle Traveler
      </a>
      <!-- Left links -->
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" href="usercreate">Create User</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="FindAirbnbListings">Find Airbnb Listing</a>
        </li>
      </ul>
      <!-- Left links -->
    </div>
    <!-- Collapsible wrapper -->
  </div>
  <!-- Container wrapper -->
</nav>
	<form action="findusers" method="post" class="container" style="width:50vw; margin-top:2vw;">
		<h1 style="text-align:center;">Search for a User by UserID</h1>
		<div class="form-outline mb-4">		
			<input id="userID" name="userID" class="form-control" value="${fn:escapeXml(param.userID)}">
			<label for="userID" class="form-label">userID</label>
		</div>
		<div class="col">
			<button type="submit" class="btn btn-primary btn-block">Submit</button>
			<br/><br/><br/>
			<span id="successMessage"><b>${messages.success}</b></span>
		</div>
	</form>
	<br/>
	<br/>
	<h1>Matching Users</h1>
        <table border="1" class="table align-middle mb-0 bg-white">
        	<thead class="bg-light">
            <tr>
                <th>UserID</th>
                <th>UserName</th>
                <th>Reviews</th>
                <th>Delete User</th>
                <th>Update User</th>
            </tr>
            </thead>
            <tbody>
                <tr>
                    <td><c:out value="${Users.getUserId()}" /></td>
                    <td><c:out value="${Users.getUserName()}" /></td>
                    <td><a href="reviews?userID=<c:out value="${Users.getUserId()}"/>">Reviews</a></td>
                    <td><a href="userdelete?userID=<c:out value="${Users.getUserId()}"/>">Delete</a></td>
                    <td><a href="userupdate?userID=<c:out value="${Users.getUserId()}"/>">Update</a></td>
                </tr>
            </tbody>
       </table>
</body>
<script
  type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.3.0/mdb.min.js"
></script>
</html>
