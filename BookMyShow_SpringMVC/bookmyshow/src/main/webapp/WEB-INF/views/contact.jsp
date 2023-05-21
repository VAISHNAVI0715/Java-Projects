<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
<%@include file="./base.jsp" %>
<style>
/* Define the style for the page title */
h1 {
  font-size: 2.5rem;
  font-weight: bold;
  text-align: center;
  color: #f44336;
  margin-bottom: 2rem;
}

/* Define the style for the cards */
.card {
  border: 1px solid #ccc;
  border-radius: 0.25rem;
  overflow: hidden;
}

.card-img-top {
  height: 350px;
  object-fit: cover;
}

.card-body {
  padding: 1rem;
}

.card-title {
  font-size: 1.25rem;
  font-weight: bold;
  margin-bottom: 0.5rem;
}

.card-text {
  margin-bottom: 0.25rem;
}

.card:hover {
  box-shadow: 0px 0px 8px rgba(0, 0, 0, 0.4);
  transform: scale(1.05);
}

/* Define the style for the return to home button */
.btn-primary {
  background-color: #f44336;
  border-color: #f44336;
}

.btn-primary:hover {
  background-color: #e53935;
  border-color: #e53935;
}

.btn-primary:focus,
.btn-primary.focus {
  box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.5);
}

</style>
</head>
<body>
<div class="container my-5">
  <h1 class="text-center mb-5">Contact Us</h1>
  <div class="row">
    <div class="col-lg-4 col-md-6 col-sm-12 mb-4">
      <div class="card">
        <img src="https://via.placeholder.com/350x350" class="card-img-top" alt="Contact Person Image">
        <div class="card-body">
          <h5 class="card-title">Aman Sharma</h5>
          <p class="card-text">SDE Intern</p>
          <p class="card-text">aman@magicedtech.com</p>
          <p class="card-text">8638028942</p>
        </div>
      </div>
    </div>
    <div class="col-lg-4 col-md-6 col-sm-12 mb-4">
      <div class="card">
        <img src="https://via.placeholder.com/350x350" class="card-img-top" alt="Contact Person Image">
        <div class="card-body">
          <h5 class="card-title">Vaishnavi Sharma</h5>
          <p class="card-text">SDE Intern</p>
          <p class="card-text">vaishnavi@magicedtech.com</p>
          <p class="card-text">8920056668</p>
        </div>
      </div>
    </div>
    <div class="col-lg-4 col-md-6 col-sm-12 mb-4">
      <div class="card">
        <img src="https://via.placeholder.com/350x350" class="card-img-top" alt="Contact Person Image">
        <div class="card-body">
          <h5 class="card-title">Ishraque Ali</h5>
          <p class="card-text">SDE Intern</p>
          <p class="card-text">ishraque@magicedtech.com</p>
          <p class="card-text">9971380370</p>
        </div>
      </div>
    </div>
    <div class="col-lg-4 col-md-6 col-sm-12 mb-4">
      <div class="card">
        <img src="https://via.placeholder.com/350x350" class="card-img-top" >
        <div class="card-body">
          <h5 class="card-title">Simarpreet Singh</h5>
          <p class="card-text">SDE Intern</p>
          <p class="card-text">simarpreet@magicedtech.com</p>
          <p class="card-text">9958032446</p>
        </div>
      </div>
    </div>
  </div>
   <div class="text-center">
  <a href="${pageContext.request.contextPath}/home" class="btn btn-primary mt-3 ">Return to Home</a>
 </div>
</div>

</body>
</html>