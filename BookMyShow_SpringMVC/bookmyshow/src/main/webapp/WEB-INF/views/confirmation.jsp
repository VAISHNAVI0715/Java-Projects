<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
<title>Booking Confirmation</title>
<style>
/* Set the background color of the body to light gray */
body {
  background-color: #f8f9fa;
}

/* Center the card horizontally */
.card {
  margin: 0 auto;
  max-width: 500px;
}

/* Add some padding to the card body */
.card-body {
  padding: 20px;
}

/* Style the card header */
.card-header {
  background-color: #f44336;
  color: #fff;
  font-weight: bold;
}

/* Style the confirmation message and booking details */
.card-text {
  font-size: 18px;
  font-weight: bold;
}

.list-group-item {
  font-size: 16px;
}

.list-group-item strong {
  font-weight: normal;
}

/* Style the "Return to Home" button */
.btn-primary {
  background-color: #f44336;
}

.btn-primary:hover {
  background-color: #e53935;

}

</style>
</head>
<body>
	<div class="container my-5">
  <div class="card">
    <div class="card-header">
      Booking Confirmation
    </div>
    <div class="card-body">
      <p class="card-text">Thank you for booking with us!</p>
      <p class="card-text">Your booking details:</p>
      <ul class="list-group">
        <li class="list-group-item"><strong>Movie:</strong>${booking.movieName }</li>
        <li class="list-group-item"><strong>Cinema:</strong>${booking.cinemaName }</li>
        <li class="list-group-item"><strong>Date:</strong> ${booking.date }</li>
        <li class="list-group-item"><strong>Time:</strong> ${booking.time }</li>
        <li class="list-group-item"><strong>Seats:</strong> ${booking.seats }</li>
      </ul>
      <a href="${pageContext.request.contextPath }/home" class="btn btn-primary mt-3">Return to Home</a>
    </div>
  </div>
</div>
	
</body>
</html>