<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Contact" %>
<%@ page import="model.User" %>

<%
User admin = (User) session.getAttribute("user");

if(admin == null || !admin.getRole().equalsIgnoreCase("ADMIN")){
    response.sendRedirect("login.jsp");
    return;
}

List<Contact> contacts =
(List<Contact>) request.getAttribute("contacts");
%>

<!DOCTYPE html>
<html>

<head>

<title>Admin | Contact Messages</title>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/navbar.css">
<link rel="stylesheet" href="css/footer.css">

<style>

.container{

    width:95%;
    margin:40px auto;

}

table{

    width:100%;
    border-collapse:collapse;
    background:white;
    box-shadow:0 0 10px #ccc;

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

tr:nth-child(even){

    background:#f9f9f9;

}

.message{

    max-width:300px;
    word-break:break-word;

}

</style>

</head>

<body>

<%@ include file="navbar.jsp" %>

<div class="container">

<h1 align="center">
📩 Contact Messages
</h1>

<table>

<tr>

<th>ID</th>
<th>Name</th>
<th>Email</th>
<th>Subject</th>
<th>Message</th>

</tr>

<%

if(contacts != null){

for(Contact c : contacts){

%>

<tr>

<td><%=c.getContactId()%></td>

<td><%=c.getFullName()%></td>

<td><%=c.getEmail()%></td>

<td><%=c.getSubject()%></td>

<td class="message"><%=c.getMessage()%></td>

</tr>

<%

}

}

%>

</table>

</div>

<%@ include file="footer.jsp" %>

</body>

</html>