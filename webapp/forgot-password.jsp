<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>
<head>
<title>Forgot Password | PetFood</title>
<link rel="stylesheet" href="css/login.css">
</head>
<body>

<div class="login-container">

<h1>
🐾 Forgot Password
</h1>

<p>
Enter your registered email
</p>

<form action="forgotPassword" method="post">


<label>
Email
</label>


<input 
type="email"
name="email"
placeholder="Enter your email"
required>



<button class="login-btn"
type="submit">

Continue

</button>



</form>



<br>


<a href="login.jsp">

Back To Login

</a>



</div>


</body>

</html>