<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>

<style>
input[type=text] {
	width: 80%;
	padding: 12px 20px;
	margin: 8px 0;
	box-sizing: border-box;
	border: 3px solid #ccc;
	-webkit-transition: 0.5s;
	transition: 0.5s;
	outline: none;
}

input[type=radio] {
	width: 5%;
	padding: 12px 20px;
	margin: 8px 0;
	-webkit-transition: 0.5s;
	transition: 0.5s;
	outline: none;
}

input[type=email] {
	width: 80%;
	padding: 12px 20px;
	margin: 8px 0;
	box-sizing: border-box;
	border: 3px solid #ccc;
	-webkit-transition: 0.5s;
	transition: 0.5s;
	outline: none;
}

input[type=number] {
	width: 80%;
	padding: 12px 20px;
	margin: 8px 0;
	box-sizing: border-box;
	border: 3px solid #ccc;
	-webkit-transition: 0.5s;
	transition: 0.5s;
	outline: none;
}

input[type=password] {
	width: 80%;
	padding: 12px 20px;
	margin: 8px 0;
	box-sizing: border-box;
	border: 3px solid #ccc;
	-webkit-transition: 0.5s;
	transition: 0.5s;
	outline: none;
}

input:focus {
	border: 3px solid #555;
}

select {
	width: 100%;
	padding: 16px 20px;
	border: none;
	border-radius: 4px;
	background-color: #f1f1f1;
}

.button {
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	cursor: pointer;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
}

.button2:hover {
	box-shadow: 0 12px 16px 0 rgba(0, 0, 0, 0.24), 0 17px 50px 0
		rgba(0, 0, 0, 0.19);
}
</style>

<script>   
    function validateForm() {
        var x = document.forms["myForm"]["email"].value;
        var atpos = x.indexOf("@");
        var dotpos = x.lastIndexOf(".");
        if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
            alert("Not a valid e-mail address");
            return false;
        }
        
       

</script>
</head>

<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Register Customer</h1>

			<p class="lead">Please fill in your information below:</p>
		</div>

		<form name="myForm" action="${isUserClickedRegister}/register"
			method="post" onsubmit="return validateForm()" method="post">

			<fieldset>
				<legend>Personal information:</legend>
				Name:<br> <input size="10" type="text" name="name" required
					value="">*<br> Email:<br> <input type="email"
					name="email" required value="">*<br> Phone:<br> <input
					type="number" name="phone" value=""><br> Gender:<br>
				<fieldset id="gender" action=# required>
					<input type="radio" name="gender" value="male"> Male<br>
					<input type="radio" name="gender" value="female"> Female<br>
				</fieldset>
				<br> Username:<br> <input type="text" name="username"
					value="">*<br> Password:<br> <input
					type="password" name="password" value="">*<br> <br>
			</fieldset>

			<br> <br> <br>

			<fieldset>
				<legend>Billing Address:</legend>
				Street Name:<br> <input type="text" name="name" value=""><br>
				Apartment Number:<br> <input type="text" name="apartmentno"
					value=""><br> City:<br> <input type="text"
					name="city" required value="">*<br> State:<br> <input
					type="text" name="state" value=""><br> Country:<br>
				<select id="country" name="country" required>
					<option value="usa">USA</option>
					<option value="au">Australia</option>
					<option value="ca">Canada</option>

				</select> ZipCode:<br> <input size="6" type="number" name="zip" required
					value="">*<br> <br>
			</fieldset>

			<br> <br> <br>

			<fieldset>
				<legend>Shipping Address:</legend>
				Street Name:<br> <input type="text" name="name" value=""><br>
				Apartment Number:<br> <input type="text" name="apartmentno"
					value=""><br> City:<br> <input type="text"
					name="city" value="">*<br> State:<br> <input
					type="text" name="state" value=""><br> Country:<br>
				<select id="country" name="country">
					<option value="usa">USA</option>
					<option value="au">Australia</option>
					<option value="ca">Canada</option>

				</select> ZipCode:<br> <input type="number" name="zip" value="">*<br>

			</fieldset>

			<br> <br> <br> <input type="submit" value="Submit"
				class="button"> <a href="<c:url value="/" />" class="button">Cancel</a>
			<br> <br>

		</form>


	</div>
</div>

</html>