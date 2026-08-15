<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model.User" %>

<!DOCTYPE html>
<html>

<head>

    <title>PetFood | Sales Report</title>

    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/navbar.css">
    <link rel="stylesheet" href="css/footer.css">

    <style>

        .container{
            width:90%;
            margin:40px auto;
        }

        .cards{
            display:flex;
            justify-content:center;
            gap:25px;
            flex-wrap:wrap;
        }

        .card{
            width:220px;
            background:white;
            padding:25px;
            text-align:center;
            border-radius:10px;
            box-shadow:0 0 10px gray;
        }

        .card h2{
            color:#27ae60;
        }

        .card h1{
            font-size:35px;
        }

        .title{
            text-align:center;
        }

    </style>

</head>

<body>

<%

User admin = (User)session.getAttribute("user");

if(admin == null || !admin.getRole().equalsIgnoreCase("ADMIN")){

    response.sendRedirect("login.jsp");
    return;

}

%>

<%@ include file="navbar.jsp" %>

<div class="container">

    <h1 class="title">
        💰 Sales Report
    </h1>

    <div class="cards">

        <div class="card">

            <h2>💵 Total Sales</h2>

            <h1>
                ৳ <%=request.getAttribute("totalSales")%>
            </h1>

        </div>

        <div class="card">

            <h2>🛒 Total Orders</h2>

            <h1>
                <%=request.getAttribute("totalOrders")%>
            </h1>

        </div>

        <div class="card">

            <h2>✅ Completed Orders</h2>

            <h1>
                <%=request.getAttribute("completedOrders")%>
            </h1>

        </div>

        <div class="card">

            <h2>⏳ Pending Orders</h2>

            <h1>
                <%=request.getAttribute("processingOrders")%>
            </h1>

        </div>

    </div>

</div>

<%@ include file="footer.jsp" %>

</body>
</html>