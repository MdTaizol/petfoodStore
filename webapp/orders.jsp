<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html>

<head>

    <title>My Orders | PetFood</title>

    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/navbar.css">
    <link rel="stylesheet" href="css/footer.css">


    <style>

        .container{

            width:80%;
            margin:auto;

        }


        .card{

            background:white;
            padding:25px;
            margin:20px;
            border-radius:10px;
            box-shadow:0 0 10px #ccc;

        }


        .completed{

            color:green;
            font-weight:bold;

        }


        .cancelled{

            color:red;
            font-weight:bold;

        }


        .paid{

            color:green;
            font-weight:bold;

        }

    </style>


</head>


<body>


<%@ include file="navbar.jsp" %>



<h1 style="text-align:center;">
    📦 My Orders
</h1>



<div class="container">


<%

ResultSet rs = (ResultSet) request.getAttribute("orders");


boolean found = false;


while(rs != null && rs.next()){


    found = true;


    String paymentMethod = rs.getString("payment_method");

    String paymentStatus = rs.getString("payment_status");

    String orderStatus = rs.getString("order_status");


%>



<div class="card">


<h2>

Order ID:
<%= rs.getInt("order_id") %>

</h2>



<p>

<b>Total Amount:</b>

৳ <%= rs.getDouble("total_amount") %>

</p>




<p>

<b>Payment Method:</b>

<%= paymentMethod %>

</p>





<p>

<b>Payment Status:</b>


<%

if(paymentStatus != null && 
   paymentStatus.equalsIgnoreCase("PAID")){


%>


<span class="paid">

✅ Paid

</span>


<%

}else{


%>


<%= paymentStatus %>


<%

}

%>


</p>






<p>

<b>Order Status:</b>


<%


if(orderStatus != null && 
   orderStatus.equalsIgnoreCase("COMPLETE")){


%>


<span class="completed">

✅ Completed

</span>



<%


}else if(orderStatus != null && 
         orderStatus.equalsIgnoreCase("CANCELLED")){


%>



<span class="cancelled">

❌ Cancelled

</span>



<%

}else{


%>


<%= orderStatus %>


<%


}


%>



</p>



</div>




<%

}


if(!found){


%>


<h2 style="text-align:center;">

No Orders Found

</h2>


<%


}


%>



</div>




<%@ include file="footer.jsp" %>


</body>


</html>