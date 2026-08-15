<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="java.util.List" %>
<%@ page import="model.Product" %>


<!DOCTYPE html>
<html>


<head>


<title>PetFood | Products</title>


<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet" href="css/navbar.css">

<link rel="stylesheet" href="css/footer.css">

<link rel="stylesheet" href="css/products.css">



</head>



<body>


<%@ include file="navbar.jsp" %>



<h1 class="page-title">
🐾 Pet Food Products
</h1>




<div class="search-box">


<form action="products" method="get">


<input 
type="text"
name="search"
placeholder="Search Product...">



<button type="submit">
Search
</button>



</form>


</div>





<div class="product-container">



<%


List<Product> products =
(List<Product>)request.getAttribute("products");



if(products != null && !products.isEmpty()){



for(Product p : products){


%>




<div class="product-card">



<img src="images/<%=p.getImage()%>"
alt="product">





<h2>
<%=p.getProductName()%>
</h2>




<p>
Brand:
<%=p.getBrand()%>
</p>





<p class="price">

৳ <%=p.getPrice()%>

</p>





<p>
Stock:
<%=p.getStock()%>
</p>






<% if(p.getStock() > 0){ %>



<form action="cart" method="post">


<input type="hidden"
name="productId"
value="<%=p.getProductId()%>">



<button class="cart-btn"
type="submit">

🛒 Add To Cart

</button>


</form>




<% } else { %>


<button class="out-btn" disabled>

Out Of Stock

</button>



<% } %>






</div>




<%


}


}
else{


%>


<h2 class="no-product">

No Product Found

</h2>


<%


}


%>




</div>




<%@ include file="footer.jsp" %>



</body>


</html>