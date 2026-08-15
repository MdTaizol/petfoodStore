<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="model.Product" %>


<!DOCTYPE html>
<html>

<head>

<title>PetFood | Edit Product</title>


<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/navbar.css">
<link rel="stylesheet" href="css/footer.css">


<style>

.form-container{

    width:450px;
    margin:40px auto;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0 0 10px gray;

}


input, textarea{

    width:100%;
    padding:10px;
    margin-bottom:15px;
    border:1px solid #ccc;
    border-radius:5px;

}



button{

    background:#27ae60;
    color:white;
    border:none;
    padding:12px 25px;
    border-radius:5px;
    cursor:pointer;

}


button:hover{

    background:#219150;

}


h1{

    text-align:center;

}


</style>


</head>



<body>


<%@ include file="navbar.jsp" %>




<%

Product product =
(Product) request.getAttribute("product");



if(product == null){

    response.sendRedirect("admin-product");

    return;

}

%>





<div class="form-container">



<h1>
✏️ Edit Product
</h1>




<form action="updateProduct" method="post">



<input type="hidden"
       name="productId"
       value="<%=product.getProductId()%>">





<label>Category ID</label>

<input type="number"
       name="categoryId"
       value="<%=product.getCategoryId()%>"
       required>





<label>Product Name</label>

<input type="text"
       name="productName"
       value="<%=product.getProductName()%>"
       required>





<label>Brand</label>

<input type="text"
       name="brand"
       value="<%=product.getBrand()%>">





<label>Price</label>

<input type="number"
       step="0.01"
       name="price"
       value="<%=product.getPrice()%>"
       required>





<label>Stock</label>

<input type="number"
       name="stock"
       value="<%=product.getStock()%>"
       required>





<label>Description</label>

<textarea name="description"
rows="5"><%=product.getDescription()%></textarea>





<label>Image Name</label>

<input type="text"
       name="image"
       value="<%=product.getImage()%>">





<button type="submit">

Update Product

</button>




</form>



</div>





<%@ include file="footer.jsp" %>



</body>


</html>