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
          <a class="nav-link" href="hostcreate">Create Host</a>
        </li>
      </ul>
      <!-- Left links -->
    </div>
    <!-- Collapsible wrapper -->
  </div>
  <!-- Container wrapper -->
</nav>
	<form action="findhosts" method="post" class="container" style="width:50vw; margin-top:2vw;">
		<h1 style="text-align:center;">Search for a Host by HostId</h1>
		<div class="form-outline mb-4">
			<input id="hostId" name="hostId" class="form-control" value="${fn:escapeXml(param.hostId)}">
			<label for="hostId" class="form-label">hostId</label>
		</div>
		<div class="col">
			<button type="submit" class="btn btn-primary btn-block">Submit</button>
			<br/><br/><br/>
			<span id="successMessage"><b>${messages.success}</b></span>
		</div>
	</form>
	<br/>
	<h1>Matching Hosts</h1>
        <table border="1" class="table align-middle mb-0 bg-white">
        	<thead class="bg-light">
	            <tr>
	                <th>HostId</th>
	                <th>HostUrl</th>
	                <th>HostName</th>
	                <th>Since</th>
	                <th>About</th>
	                <th>ResponseRate</th>
	                <th>AcceptanceRate</th>
	                <th>Delete Host</th>
	                <th>Update Host</th>
	                <th>Create Listing</th>
	            </tr>
	        </thead>
            <tbody>
                <tr>
                    <td><c:out value="${Hosts.getHostId()}" /></td>
                    <td><c:out value="${Hosts.getHostUrl()}" /></td>
                    <td><c:out value="${Hosts.getHostName()}" /></td>
                    <td><c:out value="${Hosts.getSince()}" /></td>
                    <td><c:out value="${Hosts.getAbout()}" /></td>
                    <td><c:out value="${Hosts.getResponseRate()}" /></td>
                    <td><c:out value="${Hosts.getAcceptanceRate()}" /></td>
                    <td><a href="hostdelete?hostId=<c:out value="${Hosts.getHostId()}"/>">Delete</a></td>
                    <td><a href="hostupdate?hostId=<c:out value="${Hosts.getHostId()}"/>">Update</a></td>
                    <td><a href="listingCreate?hostId=<c:out value="${Hosts.getHostId()}"/>">Create</a></td>
                </tr>
            </tbody>
       </table>
</body>
<script
  type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/4.3.0/mdb.min.js"
></script>
</html>
