<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>


<head>

<title>Payment | PetFood</title>


<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/navbar.css">


<style>

.profile-card{

    width:400px;
    margin:50px auto;
    padding:30px;
    background:white;
    border-radius:10px;
    box-shadow:0 0 10px #ccc;

}


.payment-option{

    margin:15px 0;

}


button{

    background:#27ae60;
    color:white;
    padding:12px 25px;
    border:none;
    border-radius:5px;
    cursor:pointer;

}


</style>


</head>



<body>


<%@ include file="navbar.jsp" %>




<div class="profile-card">


<h1>
💳 Payment
</h1>



<h2>

Total Amount:
৳ ${total}

</h2>




<form action="payment" method="post">

<input type="hidden" name="from" value="checkout">


<input type="radio" name="payment" value="Cash On Delivery" checked>
🚚 Cash On Delivery


<input type="radio" name="payment" value="bKash">
💳 bKash


<button type="submit">
Confirm Order
</button>

</form>



</div>





<%@ include file="footer.jsp" %>



</body>

</html>