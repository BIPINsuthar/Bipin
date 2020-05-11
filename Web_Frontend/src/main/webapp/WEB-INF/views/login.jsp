<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url var="image" value="/resources/images" />
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="${css}/bootstrap.css"  rel="stylesheet" >
<script src="${js}/bootstrap.js"  type="text/javascript" ></script>
<link rel="stylesheet" href="${css}/login.css" type="text/css">
 <script src="${js}/login.js" type="text/javascript"></script>
</head>
<body>
  <header>
  <%@include file="./shared/header.jsp" %>
  </header>
  <div class="loginbox">
    <form action="loginpage" onsubmit=" return validate()">
      <image src="${image}/man.png" class="user"></image>
      <center> <h1>login here</h1></center>
     
      <p>UserName: </p>
      <input type="text"  placeholder="enter user id!" id="user" />
      <p>Password:</p>
      <input type="password"  placeholder="enter the password!" id="pass" />
      <input type="submit" name="btn" value="sing in"/>
      <a href="#">Forgot Password</a>
      <div class="registration">
        <a href="registration">New User? Registration</a>
      </div>
     

    </form>

  </div>
</body>

</html>

