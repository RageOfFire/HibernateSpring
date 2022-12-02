<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C/DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
<title>Submit Student</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/sources/bootstrap.min.css">
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2 class="text-center text-primary">Student manage form</h2>
		</div>
		
		<div id="container">
			<h3 class="text-center text-primary">Save Student</h3>
			<form:form action="saveStudent" modelAttribute="student" method="post">
				<form:hidden path="id" />
				<table class="table table-borderless">
					<tbody>
						<tr>
							<td>ID:</td>
							<td><form:input path="id" class="form-control" readonly="true" /></td>
						</tr>
						<tr>
							<td>Name:</td>
							<td><form:input path="name" class="form-control" /></td>
						</tr>
						<tr>
							<td>Faculty:</td>
							<td><form:input path="faculty" class="form-control" /></td>
						</tr>
						<tr>
							<td></td>
							<td><input type="submit" value="Save" class="btn btn-success mt-3" /></td>
						</tr>
					</tbody>
				</table>
			</form:form>
			
			<div class="text-center">
				<p>
					<a href="${pageContext.request.contextPath}/student/list" class="link-secondary">Back to list</a>
				</p>
			</div>
		</div>
	</div>
</body>
</html>