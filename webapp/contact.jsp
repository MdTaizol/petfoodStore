<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>

<head>

<title>Contact PetFood</title>


<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/contact.css">
<link rel="stylesheet" href="css/navbar.css">
<link rel="stylesheet" href="css/footer.css">


</head>


<body>
<%@ include file="navbar.jsp" %>


<div class="contact-container">


<h1>
📩 Contact Us
</h1>



<form action="contact" method="post">



<input type="text"
name="fullName"
placeholder="Your Name"
required>



<input type="email"
name="email"
placeholder="Your Email"
required>



<input type="text"
name="subject"
placeholder="Subject"
required>



<textarea
name="message"
placeholder="Your Message"
required></textarea>



<button class="submit-btn"
type="submit">

Send Message

</button>



</form>





<div class="info">


<h2>
📍 PetFood Address
</h2>


<p>
Dhaka, Bangladesh
</p>


<p>
📞 01872975577
</p>


<p>
✉ petfood@gmail.com
</p>


</div>



</div>


<%@ include file="footer.jsp" %>
</body>

</html>