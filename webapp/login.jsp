<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>


<head>


<title>PetFood | Login</title>


<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet" href="css/login.css">


</head>



<body>



<div class="login-container">



<h1>
🐾 PetFood Login
</h1>



<p>
Welcome Back
</p>





<%

String error = request.getParameter("error");

String success = request.getParameter("success");



if(error != null){

%>


<p class="error">

❌ Invalid Email or Password

</p>


<%

}



if(success != null){

%>


<p class="success">

✅ Registration Successful. Please Login

</p>


<%

}

%>







<form action="login" method="post">



<label>
Email
</label>


<input 
type="email"
name="email"
placeholder="Enter your email"
required>






<label>
Password
</label>


<input
type="password"
name="password"
placeholder="Enter your password"
required>







<button class="login-btn"
type="submit">

Login

</button>




</form>







<div class="login-links">



<a href="forgot-password.jsp">

Forgot Password?

</a>



<br><br>



<a href="register.jsp">

Create New Account

</a>



</div>


</div>



</body>


</html>