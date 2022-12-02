<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C/DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>List Students</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/sources/bootstrap.min.css">
</head>
<body>
	<div class="navbar navbar-dark bg-secondary">
  		<div class="container-fluid">
    		<a class="navbar-brand" href="#">Danh sách</a>
  			<div class="d-flex">
        		<a class="btn btn-outline-dark" href="${pageContext.request.contextPath}/logout">Đăng xuất</a>
    		</div>
  		</div>
	</div>
	<div id="wrapper">
		<div id="header">
			<h2 class="text-center text-primary">Simple Student list in Class X</h2>
		</div>
	</div>
	<div id="container">
		<div id="content">
			<div class="row text-end">
				<div class="col">
					<a onClick="onSearch()" class="btn btn-success mx-3">Tìm kiếm</a>
				</div>
				<div class="col">
					<input type="text" id="search" class="form-control mx-3" />
				</div>
			</div>
			<input type="button" value="Add student" class="btn btn-success m-3" onclick="window.location.href='addStudent';return false;">
				<table class="table table-hover">
					<tr class="text-center">
						<th>ID</th>
						<th>Faculty</th>
						<th>Full name</th>
						<th colspan="2">Action</th>
					</tr>
					<c:forEach var="tempStudent" items="${student}">
						<c:url var="updateLink" value="/student/updateStudent">
							<c:param name="studentID" value="${tempStudent.id}" />
						</c:url>
						<c:url var="deleteLink" value="/student/delete">
							<c:param name="studentID" value="${tempStudent.id}" />
						</c:url>
						<tr class="text-center">
							<td>${tempStudent.id}</td>
							<td>${tempStudent.faculty}</td>
							<td>${tempStudent.name}</td>
							<td>
								<a href="${updateLink}" class="link-success mx-3">Update</a>
								<a href="${deleteLink}" onclick="if(!confirm('Ban chac muon xoa khong?'))) return false" class="link-danger mx-3">Delete</a>
							</td>
						</tr>
					</c:forEach>
				</table>
		</div>
	</div>
	<script>
		function onSearch() {
			var search = document.getElementById("search").value;
			window.location.href='search?studentName=' + search;
		}
	</script>
</body>
</html>