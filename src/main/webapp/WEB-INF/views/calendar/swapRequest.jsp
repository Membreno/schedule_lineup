<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>LineUp</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Josefin+Sans:600&display=swap" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="/css/app.css">
	<style>
		.display-3 {
			font-family: 'Josefin Sans', sans-serif;
			color: #82a0bc;
		}
	</style>
</head>
<body>
	<!-- NAVBAR -->
  <nav class="navbar navbar-expand-lg navbar-dark">
<a href="/lineup" class="navbar-brand">LineUp</a>
   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ml-auto">
       <li class="nav-item active">
          <a class="nav-link" href="/schedule/">Dashboard</a>
        </li>
      
        <li class="nav-item active">
          <a class="nav-link" href="/logout">Sign Out</a>
        </li>
      </ul>
    </div>
  </nav>
  <!-- NAVBAR ENDS -->
  
	<div class="container mt-2">
	<h2 class="display-3 text-center">Swap Request</h2>
		<section>
    
    <div class="first text-center my-3">
		<h2>8/28/19</h2>
        <select class="align-center">
			<c:forEach items="${schedules}" var="schedule">
				<option>
					<c:out value="${schedule.employee.firstName} ${schedule.employee.lastName}"/>
					
					<fmt:formatDate pattern="hh:mm a" value = "${schedule.startHour}"/>
					<fmt:formatDate pattern="hh:mm a" value = "${schedule.endHour}"/>
				</option>
		</c:forEach>
		</select>		
		</div>
		
		   <div class="second text-center my-3">
		   <h2>With... </h2>
		<select class="align-center" multiple>
			<c:forEach items="${schedules}" var="schedule">
				<option>
					<c:out value="${schedule.employee.firstName} ${schedule.employee.lastName}"/>
					<fmt:formatDate pattern="MM/dd/yy (E)" value = "${schedule.workDate}"/>
					<fmt:formatDate pattern="hh:mm a" value = "${schedule.startHour}"/>
					<fmt:formatDate pattern="hh:mm a" value = "${schedule.endHour}"/>
				</option>
		</c:forEach>
		</select>
		</div>
   
        <input type="submit" value="Request Swap!" class="d-block  btn btn-primary mx-auto mt-3">
		</section>
	
		
	</div>
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
