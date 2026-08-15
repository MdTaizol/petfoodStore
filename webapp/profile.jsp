<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="model.User" %>

<!DOCTYPE html>
<html>

<head>

<title>PetFood | Profile</title>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/profile.css">
<link rel="stylesheet" href="css/navbar.css">
<link rel="stylesheet" href="css/footer.css">
</head>


<body>

<%@ include file="navbar.jsp" %>

<%

User user = (User) session.getAttribute("user");


if(user == null){

    response.sendRedirect("login.jsp");

    return;

}

%>



<div class="profile-container">


<div class="profile-card">


<h1>🐾 Welcome to PetFood</h1>


<h2>User Profile</h2>



<div class="profile-info">


<p>
<strong>Name:</strong>
<%= user.getFullName() %>
</p>



<p>
<strong>Email:</strong>
<%= user.getEmail() %>
</p>



<p>
<strong>Phone:</strong>
<%= user.getPhone() %>
</p>



<p>
<strong>Role:</strong>
<%= user.getRole() %>
</p>


</div>



<div class="profile-buttons">


<a href="products" class="btn">
🛒 View Products
</a>



<a href="cart.jsp" class="btn cart-btn">
🛍 My Cart
</a>

<a href="myOrders" class="btn">
📦 My Orders
</a>

<a href="login.jsp" class="btn logout-btn">
Logout
</a>



</div>


</div>


</div>

<%@ include file="footer.jsp" %>
 
</body>

</html>