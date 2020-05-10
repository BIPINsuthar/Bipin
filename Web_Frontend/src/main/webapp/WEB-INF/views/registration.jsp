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
</head>
<body>
	<header> <%@include file="./shared/header.jsp"%>
	</header>
	<section>
	<div class="container">
		<div class="row mt-5">
			<div class="left col-md-4  text-center text-uppercase">
				<img class="img-fluid"
					src="https://image.ibb.co/n7oTvU/logo_white.png" alt="" />
				<h1>Join Us</h1>
				<p>suthar bipin kumar nagjibhai</p>
				<button class="btn btn-success">Login</button>
			</div>

			<div class="col-md-8 ml-auto right mt-5 px-5">
				<form>
					<div class="row py-4">
						<div class="form-group col-md-5 ">
							<input type="text" class="form-control" id="fname"
								placeholder="First Name">

						</div>

						<div class="form-group col-md-5">

							<input type="text" class="form-control" id="lname"
								placeholder="Last Name">
						</div>

						<div class="form-group col-md-5">

							<input type="password" class="form-control" id="pass"
								placeholder="Password">
						</div>
						<div class="form-group col-md-5">

							<input type="password" class="form-control" id="cpass"
								placeholder="Confirm password">
						</div>

						<div class="form-group col-md-5">

							<input type="number" class="form-control" id="phone"
								placeholder="Phone no">
						</div>
						<div class="form-group col-md-5">

							<input type="email" class="form-control" id="email"
								placeholder="Email Id">
						</div>

						<div class="form-group col-md-5">

							<input type="date" class="form-control" id="dob"
								placeholder="DOB">
						</div>
						<div class="form-group col-md-5 ">
							<div class="maxl">
								<label class="radio inline"> <input type="radio"
									name="gender" value="male" checked> <span> Male
								</span>
								</label> <label class="radio inline"> <input type="radio"
									name="gender" value="female"> <span>Female </span>
								</label>
							</div>
						</div>
						<div class="form-group col-md-5">
							<textarea class="form-control" name="address" id="address"
								rows="2" placeholder="Address"></textarea>
						</div>
						<div class="form-group col-md-5">
							<button class="submit btn btn-primary " onclick="validation()">submit</button>
						</div>

					</div>
				</form>
			</div>
		</div>
	</div>



	</section>




</body>
</html>