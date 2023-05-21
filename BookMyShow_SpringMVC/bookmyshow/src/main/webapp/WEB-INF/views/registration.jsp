<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register</title>
<%@include file="./base.jsp"%>
<style>
.form-group {
  margin-bottom: 20px;
}

label {
  font-weight: bold;
}

.form-control {
  display: block;
  width: 100%;
  height: 36px;
  padding: 6px 12px;
  font-size: 14px;
  line-height: 1.42857143;
  color: #555;
  background-color: #fff;
  border: 1px solid #ccc;
  border-radius: 4px;
}

.btn-primary {
  display: inline-block;
  padding: 6px 12px;
  margin-bottom: 0;
  font-size: 14px;
  font-weight: 400;
  line-height: 1.42857143;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  cursor: pointer;
  background-image: none;
  border: 1px solid transparent;
  border-radius: 4px;
  color: #fff;
  background-color: #f44336;
  border-color: #f44336;
}

.btn-block {
  display: block;
  width: 100%;
}

.text-center {
  text-align: center;
  font-weight: bold;
  color: #f44336;
}

.mt-5 {
  margin-top: 50px;
}

.mb-5 {
  margin-bottom: 50px;
}

.mt-3 {
  margin-top: 30px;
}

.mb-0 {
  margin-bottom: 0;
}

</style>
</head>

<body>
	<div class="container">
		<h1 class="text-center mt-5 mb-5">User Registration Form</h1>
		<form action="user-registration" method="post">
			<div class="form-group">
				<label for="name" >First Name:</label>
				<input type="text" name="fName" class="form-control" id="fName" placeholder="Enter your name">
			</div>
			<div class="form-group">
				<label for="name" >Last Name:</label>
				<input type="text" name="lName" class="form-control" id="lName" placeholder="Enter your name">
			</div>
			<div class="form-group">
				<label for="email">Email Address:</label>
				<input type="text" name="email" class="form-control" id="email" placeholder="Enter your email address">
			</div>
			<div class="form-group">
				<label for="password">Password:</label>
				<input type="text" name="password" class="form-control" id="password" placeholder="Enter a password">
			</div>
			<button class="btn btn-primary">Submit</button>
			<p class="text-center mt-3 mb-0">Already have an account?  <a href="${pageContext.request.contextPath }/" class="btn btn-primary btn-block">Log In</a></p>
           
		</form>
	</div>
</body>
</html>







 
