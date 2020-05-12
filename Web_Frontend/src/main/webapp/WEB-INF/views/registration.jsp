<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<spring:url var="image" value="/resources/images" />
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="${css}/bootstrap.css" rel="stylesheet">
<link href="${css}/registration.css" rel="stylesheet">
<script src="${css}/bootstrap.js" type="text/javascript"></script>
<script src="${js}/registration.js" type="text/javascript"></script>
<script>
$('.alert').alert()
</script>
</head>
<body>
<!-- header file -->
	<header> <%@include file="./shared/header.jsp"%>
	</header>
<!-- section 1 -->	
	<section>
	<div class="container">
		<div class="row mt-5">
			<div class="left col-md-4 mt-2 text-center text-uppercase">
				<img class="img-fluid"
					src="https://image.ibb.co/n7oTvU/logo_white.png" alt="" />
				<h1>Join Us</h1>
				<p>suthar bipin kumar nagjibhai</p>
				<a href="login"><button class="btn btn-success">Login</button></a>
			</div>

			<div class="col-md-8 ml-auto right  px-5">
			
			<%@ include file="./shared/message.jsp" %>
			
<!-- form  -->
				<form action="registrationform" method="post" >
					<div class="row  ">
						<div class="form-group col-md-5  ">
							<input  class="form-control" id="fname"
								placeholder="First Name" name="fname">
						</div>

						<div class="form-group col-md-5">
							<input  class="form-control" id="lname"
								placeholder="Last Name" name="lname">
						</div>

						<div class="form-group col-md-5">

							<input type="password" class="form-control" id="pass"
								placeholder="Password" name="pass">
						</div>
						
						<div class="form-group col-md-5">
							<input type="password" class="form-control" id="cpass"
	z							placeholder="Confirm password"name="cpass" >
						</div>

						<div class="form-group col-md-5">

							<input type="number" class="form-control" id="phone"
								placeholder="Phone no" name="phone" />
						</div>
						
						<div class="form-group col-md-5">
							<input type="email" class="form-control" id="email"
								placeholder="Email Id" name="email" >
						</div>

						<div class="form-group col-md-5">

							<input type="date" class="form-control" id="dob"
								placeholder="DOB" name="dob">
						</div>
						<div class="form-group col-md-5 ">
							<div class="maxl">
								<label class="radio inline"> <input type="radio"
									name="gender" value="male" name="gender" > <span> Male
								</span>
								</label> <label class="radio inline"> <input type="radio"
									name="gender" value="female" name="gender" ><span>Female </span>
								</label>
							</div>
						</div>
						<div class="form-group col-md-5">
							<textarea class="form-control" name="address" id="address"
								rows="2" placeholder="Address" name="address"></textarea>
						</div>
						<div class="form-group col-md-5">
							<button class="submit btn btn-primary " onclick="return validation()">submit</button>
						</div>

					</div>
				</form>
				
<!-- form end -->
			</div>
		</div>
	</div>

	</section>
	
<!-- section end -->




</body>
</html>