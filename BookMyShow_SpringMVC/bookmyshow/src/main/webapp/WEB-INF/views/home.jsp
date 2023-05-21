<!doctype html>
<html lang="en">
<head>
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>BookMyShow</title>
<style>
/* Set the font family and size for the entire page */
body {
  font-family: Arial, sans-serif;
  font-size: 16px;
}

/* Style the navbar */
.navbar {
  background-color: #f44336;
  color: #fff;
}

.navbar-brand {
  font-weight: bold;
}

.nav-link {
  color: #fff;
}

/* Style the welcome message */
h1 {
  font-size: 36px;
  text-align: center;
  font-weight: bold;
  color: #f44336;
}

/* Style the movie cards */
.card {
  border: none;
}

.card-img-top {
  height: 200px;
  object-fit: cover;
}

.card-title {
  font-size: 24px;
  font-weight: bold;
  margin-bottom: 0;
}

.card-text {
  margin-top: 0.5rem;
  margin-bottom: 1rem;
}

.card:hover {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  transition: 0.3s;
}

.btn-primary {
  background-color: #f44336;
  border:none;
}

.btn-primary:hover {
  background-color: #e53935;
}

</style>
</head>
<body>
 <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <a class="navbar-brand" href="#">BookMyShow</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="cinemas">Cinemas</a>
          </li>
          <li class="nav-item">
          <a class="nav-link" href="history">Your Bookings</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="contact_us">Contact</a>
          </li>
        </ul>
        <ul class="navbar-nav ml-auto">
        <li class="nav-item">
            <a class="nav-link" href="#">Welcome</a>
          </li>
          <li class="nav-item">
          <a class="nav-link" href="${pageContext.request.contextPath}/">Logout</a>
          </li>
        </ul>
      </div>
    </nav>

    <div class="container my-5">
      <h1 class="text-center mb-5">Welcome to BookMyShow</h1>
      <div class="row">
      <c:forEach items="${movies }" var="mov">
        <div class="col-md-4 mb-4">
          <div class="card">
            <img src="https://via.placeholder.com/350x200" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title" name="name">${mov.name}</h5>
              <p class="card-text" name="description">${mov.description}</p>
              <a href="book" class="btn btn-primary">Book Now</a>
            </div>
          </div>
        </div>
       </c:forEach>
      </div>
    </div>
</body>
</html>



 
 