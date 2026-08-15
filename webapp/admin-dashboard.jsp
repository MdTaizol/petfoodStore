<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="model.User" %>


<!DOCTYPE html>
<html>

<head>

<title>PetFood | Admin Dashboard</title>


<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet" href="css/navbar.css">

<link rel="stylesheet" href="css/footer.css">

<link rel="stylesheet" href="css/admin-dashboard.css">


</head>


<body>


<%

User user =
(User)session.getAttribute("user");


if(user == null ||
   !user.getRole().equalsIgnoreCase("ADMIN")){


    response.sendRedirect("login.jsp");

    return;

}


%>



<%@ include file="navbar.jsp" %>





<div class="admin-container">



<h1>
🐾 PetFood Admin Dashboard
</h1>



<p class="welcome">

Welcome Admin,
<%= user.getFullName() %>

</p>





<div class="dashboard-cards">

    <!-- USERS -->

    <div class="admin-card">

        <h2>
        👥 Total Users
        </h2>

        <h1>
        <%= request.getAttribute("totalUsers") %>
        </h1>

        <a href="admin-users">
        Manage Users
        </a>

    </div>



    <!-- PRODUCTS -->

    <div class="admin-card">

        <h2>
        📦 Total Products
        </h2>

        <h1>
        <%= request.getAttribute("totalProducts") %>
        </h1>

        <a href="admin-product">
        📦 Manage Products
        </a>

        <br><br>

        <a href="add-product.jsp">
        ➕ Add Product
        </a>

    </div>



    <!-- ORDERS -->

    <div class="admin-card">

        <h2>
        🛒 Total Orders
        </h2>

        <h1>
        <%= request.getAttribute("totalOrders") %>
        </h1>

        <a href="admin-orders">
        Manage Orders
        </a>

    </div>



    <!-- SALES -->

    <div class="admin-card">

        <h2>
        💰 Total Sales
        </h2>

        <h1>
        ৳ <%= request.getAttribute("totalSales") %>
        </h1>

        <a href="admin-sales">
        💰 View Sales
        </a>

    </div>



    <!-- CONTACT MESSAGES -->

    <div class="admin-card">

        <h2>
        📩 Contact Messages
        </h2>

        <h1>
        💬
        </h1>

        <a href="adminContacts">
        View Messages
        </a>

    </div>

</div>








</div>




<div class="admin-actions">



<a href="products">

🛍 View Store

</a>





<a href="profile.jsp">

👤 My Profile

</a>






<a href="logout">

🚪 Logout

</a>



</div>
















<%@ include file="footer.jsp" %>






</body>

</html>