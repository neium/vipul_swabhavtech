<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Contact</title>
<jsp:include page="scripts.jsp" />
</head>
<body>
<jsp:include page="header.jsp" />
	<div class="jumbotron text-center">
		<h2>Add Contact</h2>
	</div>
	<div class="col-sm-6 col-lg-4">
		<form action="addContact" method="POST">
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text" id="inputGroup-sizing-sm">Name</span>
				</div>
				<input type="text" class="form-control" name="name" required/>
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text" id="inputGroup-sizing-sm">Email</span>
				</div>
				<input type="email" class="form-control" name="email" required/>
			</div>
			<div class="input-group mb-3">
				<div class="input-group-prepend">
					<span class="input-group-text" id="inputGroup-sizing-sm">Number</span>
				</div>
				<input type="text" class="form-control" name="number" required/>
			</div>
			<div>
				<input type="submit" value="Add" class="btn btn-info" /> 
			</div>
		</form>
	</div>
</body>
</html>