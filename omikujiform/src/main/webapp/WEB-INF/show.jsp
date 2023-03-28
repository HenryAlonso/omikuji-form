<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Own Omikuji</title>

<link rel="stylesheet" type ="text/css" href="/css/style.css">
<script type="text/javascript" src="/js/app.js"></script>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

</head>
<body>
	<h1 class="title">Here's Your Omikuji!</h1>
	<div class="omikuji">
		<div>
			<c:out value="${result}"/>
		</div>
	</div>
	<div class="homelink">
		<a href="/omikuji"><button>Go Back</button></a>	
	</div>
	
</body>
</html>