<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/sources/bootstrap.min.css">
</head>
<body>
	<c:url value="login" var="loginUrl"/>  
	<form action="${loginUrl}" method="post">         
    <c:if test="${param.error != null}">          
        <p class="alert alert-danger" role="alert">  
            Tên người dùng hoặc mật khẩu không hợp lệ.  
        </p>  
    </c:if>  
    <c:if test="${param.logout != null}">         
        <p class="alert alert-danger" role="alert">  
            Bạn đã đăng xuất.  
        </p>  
    </c:if>
    <img class="mx-auto d-block" src="${pageContext.request.contextPath}/sources/logo.png" alt="logo.png" width="100" height="100">
    <h1 class="h3 mb-3 fw-normal text-center">Đăng nhập</h1>

    <div class="form-floating m-5">
      <input type="text" class="form-control" id="username" name="username" placeholder="username">
      <label for="username">Tên người dùng</label>
    </div>
    <div class="form-floating m-5">
      <input type="password" class="form-control" id="password" name="password" placeholder="password">
      <label for="password">Mật khẩu</label>
    </div>
    <div class="text-center">
    	<button class="btn btn-lg btn-success" type="submit">Đăng nhập</button>
    </div>
</form>  
</body>
</html>