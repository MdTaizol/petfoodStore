<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="model.Cart" %>


<%

response.setHeader(
"Cache-Control",
"no-cache, no-store, must-revalidate"
);

response.setHeader(
"Pragma",
"no-cache"
);

response.setDateHeader(
"Expires",
0
);

%>



<!DOCTYPE html>
<html>


<head>


<title>My Cart | PetFood</title>



<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/cart.css">
<link rel="stylesheet" href="css/navbar.css">
<link rel="stylesheet" href="css/footer.css">



</head>



<body>



<%@ include file="navbar.jsp" %>



<h1>
🛒 My Cart
</h1>




<div class="cart-container">



<%


List<Cart> cartList =
(List<Cart>) request.getAttribute("cartList");



double grandTotal = 0;



if(cartList != null && !cartList.isEmpty()){



for(Cart c : cartList){


grandTotal += c.getTotal();



%>




<div class="card">



<h2>

<%=c.getProductName()%>

</h2>




<p>

Quantity:

<%=c.getQuantity()%>

</p>




<p class="price">

Price:

৳ <%=c.getPrice()%>

</p>




<p>

Total:

৳ <%=c.getTotal()%>

</p>




<br>



<a href="removeCart?cartId=<%=c.getCartId()%>">


<button class="remove-btn">

🗑 Remove

</button>


</a>




</div>




<%


}



%>




<div class="total">


Grand Total:

৳ <%=grandTotal%>


</div>




<br>




<div style="text-align:center;">



<form action="checkout" method="post">



<input type="hidden"
name="total"
value="<%=grandTotal%>">



<button class="checkout-btn"
type="submit">


Proceed To Checkout


</button>



</form>


</div>





<%


}

else{


%>




<div class="empty-cart">


<h2>

🛒 Your Cart is Empty

</h2>



<br>


<a href="products">


<button class="checkout-btn">

Continue Shopping

</button>


</a>


</div>




<%


}


%>




</div>





<%@ include file="footer.jsp" %>




</body>


</html>