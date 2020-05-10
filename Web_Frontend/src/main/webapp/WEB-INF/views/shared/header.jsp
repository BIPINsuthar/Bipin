<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
 
</style>
</head>
<body>
   <nav class="navbar navbar-expand-lg navbar-light bg-light mt-auto">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto mr-2 text-dark bg-white ">
      <li class="nav-item active ">
        <a class="nav-link text-info " href="${contextRoot}/index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item ">
        <a class="nav-link" href="${contextRoot}/login">Link</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${contextRoot}/login">Link</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${contextRoot}/login">Event</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="${contextRoot}/login">about us</a>
      </li>
      <li><a href="${contextRoot}/login"><button class="btn btn-dark">Login</button></a></li>
     
    </ul>
  </div>
</nav>

</body>
</html>