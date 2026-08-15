<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>


<head>

<title>Online Payment | PetFood</title>


<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet" href="css/payment.css">


</head>



<body>


<%@ include file="navbar.jsp" %>




<div class="payment-container">



<h1>
💳 Online Payment
</h1>



<p>
Complete your payment information
</p>





<form action="payment" method="post">



<label>
Payment Method
</label>



<select name="paymentMethod" required>


<option value="Bkash">
bKash
</option>


<option value="Nagad">
Nagad
</option>


<option value="Card">
Card Payment
</option>


</select>





<label>
Mobile/Card Number
</label>


<input 
type="text"
name="paymentNumber"
placeholder="Enter payment number"
required>






<label>
Amount
</label>


<input 
type="text"
name="amount"
value="${total}"
readonly>






<button type="submit">

Pay Now

</button>



</form>



</div>





<%@ include file="footer.jsp" %>



</body>


</html>