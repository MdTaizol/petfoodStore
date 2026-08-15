<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="model.User" %>
<%@ page import="java.util.List" %>


<!DOCTYPE html>
<html>

<head>

<title>PetFood | Manage Users</title>


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


th{

    background:#27ae60;
    color:white;
    padding:12px;

}


td{

    padding:12px;
    border:1px solid #ddd;
    text-align:center;

}


h1{

    text-align:center;

}


</style>


</head>



<body>


<%

User admin =
(User)session.getAttribute("user");


if(admin == null ||
   !admin.getRole().equalsIgnoreCase("ADMIN")){


    response.sendRedirect("login.jsp");

    return;

}

%>




<%@ include file="navbar.jsp" %>





<div class="container">


<h1>
👥 Manage Users
</h1>



<table>


<tr>

<th>User ID</th>

<th>Name</th>

<th>Email</th>

<th>Phone</th>

<th>Role</th>


</tr>





<%


List<User> users =
(List<User>)request.getAttribute("users");



if(users != null){



for(User u : users){


%>



<tr>


<td>
<%=u.getUserId()%>
</td>



<td>
<%=u.getFullName()%>
</td>



<td>
<%=u.getEmail()%>
</td>



<td>
<%=u.getPhone()%>
</td>



<td>
<%=u.getRole()%>
</td>



</tr>




<%


}

}

else{


%>


<tr>

<td colspan="5">

No Users Found

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