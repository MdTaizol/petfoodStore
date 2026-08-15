<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>

<title>bKash Payment | PetFood</title>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/navbar.css">


<style>

.payment-container{

    width:400px;
    margin:70px auto;
    background:white;
    padding:35px;
    border-radius:15px;
    text-align:center;
    box-shadow:0 0 15px #ccc;

}


.payment-container input{

    width:100%;
    padding:12px;
    margin:10px 0;
    border-radius:6px;
    border:1px solid #ccc;

}


.payment-container button{

    width:100%;
    padding:12px;
    background:#27ae60;
    color:white;
    border:none;
    border-radius:8px;
    cursor:pointer;

}

</style>


</head>


<body>


<%@ include file="navbar.jsp" %>


<div class="payment-container">


<h1>
💳 bKash Payment
</h1>


<h2>
Amount: ৳ ${sessionScope.total}
</h2>


<form action="payment" method="post">


<input type="hidden" 
       name="payment" 
       value="bKash">


<input type="hidden"
       name="bkashConfirm"
       value="true">



<label>
bKash Number
</label>

<input type="text"
       name="bkashNumber"
       placeholder="01XXXXXXXXX"
       required>



<label>
Transaction ID
</label>

<input type="text"
       name="transactionId"
       placeholder="Example: TX123456"
       required>



<button type="submit">

Confirm Payment

</button>


</form>

</div>


<%@ include file="footer.jsp" %>


</body>

</html>