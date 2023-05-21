<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./base.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="ISO-8859-1">
<title>Book Your Tickets</title>
<style>

.container {
  max-width: 600px;
  margin: 0 auto;
  padding: 0 15px;
}


h1 {
  font-size: 2.5rem;
  font-weight: bold;
  color: #f44336;
  text-align: center;
  margin-top: 0;
}


form {
  background-color: #f2f2f2;
  border-radius: 5px;
  padding: 20px;
  margin-top: 50px;
}


label {
  display: block;
  font-weight: bold;
  margin-bottom: 5px;
}


input[type="date"],
input[type="time"],
select {
  width: 100%;
  padding: 10px;
  border: none;
  border-radius: 5px;
  margin-bottom: 20px;
  font-size: 1.1rem;
}


button[type="submit"] {
  background-color: #f44336;
  border: none;
  border-radius: 5px;
  padding: 10px 20px;
  color: #fff;
  font-size: 1.1rem;
  cursor: pointer;
}


button[type="submit"]:hover {
  background-color: #e53935;
}

</style>
</head>
<body>
\<div class="container my-5">
  <h1 class="text-center mb-5">Book Now</h1>
  <form action="book-confirmation" method="post">
    <div class="form-group">
      <label for="movie">Movie</label>
      <select class="form-control" id="movie" name="movieName">
        <option>Select a movie</option>
        <c:forEach items="${movies }" var="mov">
        <option>${mov.name }</option>
        </c:forEach>
      </select>
    </div>
    <div class="form-group">
      <label for="cinema">Cinema</label>
      <select class="form-control" id="cinema" name="cinemaName">
        <option>Select a cinema</option>
        <c:forEach items="${cinemas }" var="cms">
        <option>${cms.name}</option>
        </c:forEach>
      </select>
    </div>
    <div class="form-group">
      <label for="date">Date</label>
      <input name="date" type="date" class="form-control" id="date">
    </div>
    <div class="form-group">
      <label for="time">Time</label>
      <input name="time" type="time" class="form-control" id="time">
    </div>
    <div class="form-group">
      <label for="seats">Number of Seats</label>
      <input name="seats" type="number" class="form-control" id="seats">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>
</body>
</html>

