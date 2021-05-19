<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
</head>
</head>
<body>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
		crossorigin="anonymous"></script>

	<br>
	<button type="button" class="btn btn-success" id="values-btn">Get
		Values</button>
	<br>

	<table class="table">
		<thead>
			<tr>
				<th scope="col">Player ID</th>
				<th scope="col">Name</th>
				<th scope="col">Age</th>
				<th scope="col">Gender</th>
				<th scope="col">Team</th>
				
			</tr>
		</thead>
		<tbody id="display">
		</tbody>
	</table>
	<script type="text/javascript" src="viewscript.js"></script>

</body>
</html>