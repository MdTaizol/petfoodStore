<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="model.User" %>


<!DOCTYPE html>
<html>

<head>

<title>PetFood | Add Product</title>


<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet" href="css/navbar.css">

<link rel="stylesheet" href="css/footer.css">

<link rel="stylesheet" href="css/add-product.css">


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





<div class="product-form-container">



<h1>
➕ Add New Product
</h1>





<form action="addProduct" method="post">



<label>
Product Name
</label>


<input type="text"
       name="productName"
       placeholder="Enter product name"
       required>






<label>
Category ID
</label>


<input type="number"
       name="categoryId"
       placeholder="Enter category id"
       required>







<label>
Brand
</label>


<input type="text"
       name="brand"
       placeholder="Enter brand name">







<label>
Price
</label>


<input type="number"
       name="price"
       placeholder="Enter price"
       required>








<label>
Stock
</label>


<input type="number"
       name="stock"
       placeholder="Enter stock quantity"
       required>








<label>
Description
</label>


<textarea name="description"
          placeholder="Product description">
</textarea>








<label>
Image Name
</label>


<input type="text"
       name="image"
       placeholder="example.jpg">







<button type="submit">

Add Product

</button>




</form>





</div>





<%@ include file="footer.jsp" %>



</body>

</html>