<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>


<head>


<title>PetFood | Register</title>


<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet" href="css/register.css">


</head>



<body>




<div class="register-container">



<h1>
🐾 Create Account
</h1>



<p>
Join PetFood Family
</p>



<%

String error = request.getParameter("error");

String success = request.getParameter("success");



if(error != null){


    if(error.equals("password")){

%>


<p class="error">

❌ Password and Confirm Password do not match

</p>


<%

    }

    else if(error.equals("exists")){


%>


<p class="error">

❌ Email or Phone already exists

</p>


<%

    }


}





if(success != null){


    if(success.equals("registered")){


%>


<p class="success">

✅ Registration Successful. Please Login.

</p>


<%

    }

}


%>








<form action="register" method="post">



<label>
Full Name
</label>


<input 
type="text"
name="name"
placeholder="Enter your full name"
required>







<label>
Email
</label>


<input
type="email"
name="email"
placeholder="Enter your email"
required>







<label>
Phone
</label>


<input
type="text"
name="phone"
placeholder="Enter phone number"
required>








<label>
Password
</label>


<input
type="password"
id="password"
name="password"
placeholder="Create password"
required>







<label>
Confirm Password
</label>


<input
type="password"
id="confirmPassword"
name="confirmPassword"
placeholder="Confirm password"
required>







<button class="register-btn"
type="submit">

Register

</button>





</form>








<div class="login-link">


<p>

Already have an account?


<a href="login.jsp">

Login

</a>


</p>


</div>







</div>



</body>


</html>