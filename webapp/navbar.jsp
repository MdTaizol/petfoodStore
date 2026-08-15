<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.User" %>

<%

User loginUser = (User) session.getAttribute("user");

boolean isAdmin = false;

if(loginUser != null && loginUser.getRole() != null){

    if(loginUser.getRole().equalsIgnoreCase("ADMIN")){

        isAdmin = true;

    }

}

%>

<div class="navbar">

    <div class="logo">
        🐾 PetFood
    </div>

    <div class="nav-links">

        <a href="index.jsp">
            Home
        </a>

        <a href="products">
            Products
        </a>

        <a href="about.jsp">
            About
        </a>

        <a href="contact.jsp">
            Contact
        </a>

        <a href="profile.jsp">
            Profile
        </a>

        <a href="cart">
            🛒 Cart
        </a>

        <a href="myOrders">
            📦 My Orders
        </a>

        <% if(isAdmin){ %>

        <a href="adminDashboard">
            📊 Dashboard
        </a>

        <% } %>

        <a href="logout">
            🚪 Logout
        </a>

    </div>

</div>