<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/sources/bootstrap.min.css">
</head>
<body>
	<div class="px-4 py-5 my-5 text-center">
    <img class="d-block mx-auto mb-4" src="${pageContext.request.contextPath}/sources/logo.png" alt="logo.png" width="100" height="100">
    <h1 class="display-5 fw-bold">Quản lý</h1>
    <div class="col-lg-6 mx-auto">
      <p class="lead mb-4">Chào mừng Bùi Hồng Sơn</p>
      <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
        <a href="${pageContext.request.contextPath}/login" class="btn btn-primary btn-lg px-4 gap-3">Đăng nhập</a>
      </div>
    </div>
  </div>
</body>
</html>