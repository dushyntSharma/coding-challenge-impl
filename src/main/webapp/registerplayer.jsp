<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./style.css" />
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<style>
form {
	display: inline-block;
	margin-left: 25%;
	margin-right: 25%;
	width: 50%;
}
</style>
</head>
<body>
	<form name="myForm" action="RegisterPlayer" onsubmit="required();"
		method="post">
		<ul class="main-nav">
			<li class="active"><a href="index.jsp">Home</a></li>
		</ul>




		<h1>Player Register</h1>
		<div>
			<label><b>Player ID:</b></label> <input type="text"
				placeholder="Enter id" name="id" id="id">

		</div>
		<div>
			<label><b>Name:</b></label> <input type="text"
				placeholder="Enter Name" name="name" id="name"> <span
				class="error_form" id="namecheck"></span>
		</div>

		<div>
			<label><b>Age:</b></label> <input type="text" placeholder="Enter age"
				name="age" id="age"> <span class="error_form" id="ageC"></span>
		</div>
		<div>
			<label><b>Gender:</b></label> <input type="text"
				placeholder="Enter gender" name="gender" id="gender"> <span
				class="error_form" id="genderC"></span>
		</div>

		<div>
			<label><b>Team:</b></label> <input type="text"
				placeholder="Enter team" name="team" id="team"> <span
				class="error_form" id="teamC"></span>
		</div>

		<div>
			<input type="submit" value="Submit" />

		</div>

	</form>

	<script type="text/javascript">
		$(function() {

			$("#namecheck").hide();
			$("#ageC").hide();
			$("#genderC").hide();
			$("#teamC").hide();

			var errorName = false;
			var errorAge = false;
			var errorGender = false;
			var errorTeam = false;

			$("#name").focusout(function() {
				nameCheck();
			});
			function nameCheck() {

				var name = $("#name").val();
				if (name !== '') {
					$("#namecheck").hide();
					$("#name").css("border-bottom", "2px solid #34F458");
				} else {
					$("#namecheck").html("Name cant be blank");
					$("#namecheck").show();
					$("#name").css("border-bottom", "2px solid #F90A0A");
					errorName = true;
				}
			}

			$("#age").focusout(function() {
				ageC();
			});
			function ageC() {
				var ages = $("#age").val();
				if (ages !== '') {
					$("#ageC").hide();
					$("#age").css("border-bottom", "2px solid #34F458");
				} else {
					$("#ageC").html("Enter the Age");
					$("#ageC").show();
					$("#age").css("border-bottom", "2px solid #F90A0A");
					errorAge = true;
				}
			}

			$("#myForm").submit(
					function() {
						errorName = false;
						errorAge = false;
						errorAddress = false;
						errorCity = false;
						errorState = false;
						errorCountry = false;
						errorEmail = false;

						nameCheck();
						ageC();
						addressC();
						cityC();
						stateC();
						countryC();
						emailC();
						if (name == false && ages == false && addresss == false
								&& cities == false && states == false
								&& countries == false && emails == false) {
							alert("Registration Successfull");
							return true;
						} else {
							alert("Please Fill the form Correctly");
							return false;
						}

					});
		});
	</script>

</body>
</html>
