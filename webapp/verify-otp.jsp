<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html>

<head>

<title>Verify OTP</title>

<link rel="stylesheet" href="css/login.css">

</head>

<body>

<div class="login-container">

<h1>

Verify OTP

</h1>

<form action="verifyOtp" method="post">

<label>

Enter OTP

</label>

<input

type="text"

name="otp"

maxlength="6"

required>

<button class="login-btn" type="submit">

Verify OTP

</button>

</form>

<br>

<a href="login.jsp">

Back To Login

</a>

</div>

</body>

</html>