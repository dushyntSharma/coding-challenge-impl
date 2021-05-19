<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./style.css" />
</head>
<style type="text/css">
h1 {
	color: white;
}

p {
	padding-left: 20px;
	padding-top: 25px;
}

a {
	text-decoration: blink;
	text-align: center;
	color: white;
}

span, table {
	color: white;
}
</style>
<script>
	var request = new XMLHttpRequest();
	function searchInfo() {
		var team = document.vinform.team.value;
		var url = "searchplayercon.jsp?val=" + team;

		try {
			request.onreadystatechange = function() {
				if (request.readyState == 4) {
					var val = request.responseText;
					document.getElementById('mylocation').innerHTML = val;
				}
			}//end of function  
			request.open("GET", url, true);
			request.send();
		} catch (e) {
			alert("Unable to connect to server");
		}
	}
</script>
</head>
<body>
	<h1>Search Player</h1>
	<form name="vinform">
		<input type="text" name="team" placeholder="Search Player"
			onkeyup="searchInfo()">
	</form>

	<span id="mylocation"></span>
</body>
</html>