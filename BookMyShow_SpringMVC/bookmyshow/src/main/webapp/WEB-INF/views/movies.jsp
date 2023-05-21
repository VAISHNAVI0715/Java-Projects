<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movies</title>
<%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
h1{
  font-weight: bold;
  color: #f44336;
}

.card {
  border: 1px solid #ccc;
  border-radius: 4px;
  box-shadow: 0px 0px 4px rgba(0, 0, 0, 0.2);
  transition: all 0.3s ease-in-out;
}

.card:hover {
  box-shadow: 0px 0px 8px rgba(0, 0, 0, 0.4);
  transform: scale(1.05);
}

.card-img-top {
  border-top-left-radius: 4px;
  border-top-right-radius: 4px;
}

.card-title {
  font-size: 1.25rem;
  font-weight: bold;
  margin-bottom: 0.5rem;
}

.card-text {
  margin-bottom: 1rem;
}

.btn-primary {
  background-color: #f44336;
  border: none;
}

.btn-primary:hover {
  background-color: #e53935;
}

</style>
</head>
<body>
<div class="container my-5">
  <h1 class="text-center mb-5">Now Showing</h1>
  <div class="row">
  <c:forEach items="${movies }" var="mov">
    <div class="col-lg-4 col-md-6 col-sm-12 mb-4">
      <div class="card">
        <img src="https://via.placeholder.com/350x500" class="card-img-top" alt="Movie Poster">
        <div class="card-body">
          <h5 class="card-title" name="name">${mov.name}</h5>
          <p class="card-text" name="description">${mov.description}</p>
          <a href="book" class="btn btn-primary">Book Now</a>
        </div>
      </div>
    </div>
   </c:forEach>
  </div>
  <div class="text-center">
  <a href="${pageContext.request.contextPath}/home" class="btn btn-primary mt-3 ">Return to Home</a>
 </div>
</div>

</body>
</html>