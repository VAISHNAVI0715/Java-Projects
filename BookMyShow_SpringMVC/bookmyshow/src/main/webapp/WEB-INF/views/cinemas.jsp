<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cinemas</title>
<%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
/* Center the page heading */
h1.text-center {
  text-align: center;
   font-weight: bold;
  color: #f44336;
}

/* Add margin to the top of the page links */
.text-center {
  margin-top: 50px;
}

/* Style the cards */
.card {
  box-shadow: 0px 0px 10px #ccc;
  transition: box-shadow 0.2s ease-in-out;
}

.card:hover {
  box-shadow: 0px 0px 20px #ccc;
}

/* Style the buttons */
.btn-primary {
  background-color: #f44336;
  border:none;
}

.btn-primary:hover {
  background-color: #e53935;
  border:none;
}

.btn-primary:focus {
  box-shadow: 0 0 0 0.2rem rgba(38,143,255,.5);
}

</style>
</head>
<body>
<div class="container my-5">
  <h1 class="text-center mb-5">Cinemas</h1>
  <div class="row">
  <c:forEach items="${cinemas }" var="cms">
    <div class="col-lg-4 col-md-6 col-sm-12 mb-4">
      <div class="card">
        <img src="https://via.placeholder.com/350x200" class="card-img-top" alt="Cinema Image">
        <div class="card-body">
          <h5 class="card-title" name="name">${cms.name }</h5>
          <p class="card-text" name="address">${cms.address }</p>
          <a href="movies" class="btn btn-primary">View Movies</a>
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