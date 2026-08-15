<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>


<head>


<title>Reset Password | PetFood</title>


<link rel="stylesheet" href="css/login.css">


</head>



<body>



<div class="login-container">


<h1>
🐾 Reset Password
</h1>



<form action="resetPassword" method="post">



<label>
New Password
</label>



<input 
type="password"
name="password"
placeholder="Enter new password"
required>




<label>
Confirm Password
</label>



<input 
type="password"
name="confirmPassword"
placeholder="Confirm password"
required>




<button class="login-btn"
type="submit">

Change Password

</button>




</form>



<br>


<a href="login.jsp">

Back To Login

</a>



</div>




</body>


</html>