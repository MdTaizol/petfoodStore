<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="model.User" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Product" %>


<!DOCTYPE html>
<html>


<head>

<title>PetFood | Manage Products</title>


<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet" href="css/navbar.css">

<link rel="stylesheet" href="css/footer.css">

<link rel="stylesheet" href="css/admin-product.css">


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





<div class="product-container">



<h1>
📦 Manage Products
</h1>




<a class="add-btn" href="add-product.jsp">

➕ Add New Product

</a>






<table>


<tr>

<th>ID</th>

<th>Image</th>

<th>Name</th>

<th>Brand</th>

<th>Price</th>

<th>Stock</th>

<th>Action</th>


</tr>





<%

List<Product> products =
(List<Product>)request.getAttribute("products");



if(products != null){



for(Product p : products){


%>




<tr>


<td>
<%= p.getProductId() %>
</td>



<td>

<img src="images/<%=p.getImage()%>"
     width="70"
     height="70">

</td>




<td>
<%=p.getProductName()%>
</td>



<td>
<%=p.getBrand()%>
</td>




<td>
৳ <%=p.getPrice()%>
</td>



<td>
<%=p.getStock()%>
</td>




<td>


<a href="editProduct?id=<%=p.getProductId()%>">
✏️ Edit
</a>



<a href="deleteProduct?id=<%=p.getProductId()%>">
🗑 Delete
</a>




</td>



</tr>





<%


}


}


else{


%>


<tr>

<td colspan="7">

No Product Found

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