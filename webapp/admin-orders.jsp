<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="model.Order" %>
<%@ page import="model.User" %>


<!DOCTYPE html>
<html>


<head>

<title>PetFood | Manage Orders</title>


<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/navbar.css">
<link rel="stylesheet" href="css/footer.css">


<style>

.container{

    width:90%;
    margin:40px auto;

}


table{

    width:100%;
    border-collapse:collapse;
    background:white;

}


th,td{

    padding:12px;
    border:1px solid #ddd;
    text-align:center;

}


th{

    background:#27ae60;
    color:white;

}


h1{

    text-align:center;

}



.status{

    padding:5px 10px;
    border-radius:5px;
    background:#f1c40f;

}



</style>


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





<div class="container">



<h1>
🛒 Manage Orders
</h1>





<table>


<tr>

<th>Order ID</th>

<th>User ID</th>

<th>Total Amount</th>

<th>Payment Method</th>

<th>Payment Status</th>

<th>Order Status</th>


</tr>





<%


List<Order> orders =
(List<Order>)request.getAttribute("orders");



if(orders != null && !orders.isEmpty()){



for(Order o : orders){


%>



<tr>


<td>
<%=o.getOrderId()%>
</td>



<td>
<%=o.getUserId()%>
</td>



<td>

৳ <%=o.getTotalAmount()%>

</td>



<td>

<%=o.getPaymentMethod()%>

</td>



<td>

<%=o.getPaymentStatus()%>

</td>



<td>

<form action="update-order-status" method="post">


<input type="hidden" 
name="orderId" 
value="<%=o.getOrderId()%>">



<select name="status">


<option value="Processing"
<%=o.getOrderStatus().equals("Processing")?"selected":""%>>
Processing
</option>



<option value="Completed"
<%=o.getOrderStatus().equals("Completed")?"selected":""%>>
Completed
</option>



<option value="Cancelled"
<%=o.getOrderStatus().equals("Cancelled")?"selected":""%>>
Cancelled
</option>



</select>



<button type="submit">
Update
</button>



</form>


</td>



</tr>




<%


}

}

else{


%>


<tr>

<td colspan="6">

No Orders Found

</td>

</tr>


<%


}


%>





</table>




</div>





<%@ include file="footer.jsp" %>




</body>


</html>