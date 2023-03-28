<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Omikuji Form</title>

<link rel="stylesheet" type ="text/css" href="/css/style.css">
<script type="text/javascript" src="/js/app.js"></script>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="content">
		<h1>Send an Omikuji!</h1>
		<div class="form">
			<form action="/submit" method ="post">
				<div class="mb-3">
					<label for="quantity">Pick any number from 5 to 25</label>
					<input type="number" id="quantity" name="formNumber" min="5" max="25">
				</div>
				<div class="mb-3">
				  	<label for="city" class="form-label">Enter the name of any city:</label>
				  	<input type="text" class="form-control" id="city" placeholder="Brooklyn or Seattle maybe?" name="city">
				</div>
				<div class="mb-3">
					<label for="person">Enter the name of a real person:</label>
					<input type="text" class="form-control" id="person" placeholder="Anyone famous?" name="person">
				</div>
				<div class="mb-3">
					<label for="hobby">Enter professional endeavor or hobby:</label>
					<input type="text" class="form-control" id="hobby" placeholder="Gamer or architect?" name="hobby">
				</div>
				<div class="mb-3">
					<label for="organism">Enter any type of living thing:</label>
					<input type="text" class="form-control" id="organism" placeholder="Dogs or an alien?" name="organism">
				</div>
				<div class="mb-3">
				  	<label for="compliment" class="form-label">Say something nice to someone:</label>
				  	<textarea class="form-control" id="compliment" rows="15" name="compliment"></textarea>
				</div>
				<p>Send and show a friend</p>
				<input type="submit" value="Submit">
			</form>
		</div>
	</div>
</body>
</html>