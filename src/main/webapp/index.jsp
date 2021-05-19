<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Virtual Class</title>
<link rel="stylesheet" type="text/css" href="style.css" />
<style type="text/css">
form {
	display: inline-block;
}

.nav {
	display: inline-block;
	margin-left: 25%;
	margin-right: 25%;
	width: 50%;
}

label {
	text-align: right;
	width: 75px;
	padding-right: 20px;
}

br {
	clear: left;
}
</style>
</head>

<body>

	<ul class="main-nav">
		<li class="active"><a href="aboutus.html">About Us</a></li>
	</ul>

	<ul class="main-nav">
		<li class="active"><a href="index.jsp">Home</a></li>
	</ul>

	<div class="nav">
		<form>
			<h1>A Game of Players</h1>

			<div>
				<p>
					<a href="registerplayer.jsp">Register Player</a>
				</p>
			</div>
			<div>
				<p>
					<a href="viewplayer.jsp">View Player</a>
				</p>
			</div>
			<div>
				<p>
					<a href="searchplayer.jsp">Search Player</a>
				</p>
			</div>

		</form>
	</div>


</body>

</html>