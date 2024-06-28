<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Electronic Voting System</title>
    <link href="css/style.css" rel="stylesheet">
</head>
<%
if(request.getParameter("m1")!=null){%>
    
<script>alert('Login Sucessfully!')</script>

<%}
if(request.getParameter("m2")!=null){%>

<script>alert('Item Failed..!')</script>
 <%
}
%> 
<body>
    <br>
<h1 class="heading">Electronic Voting System</h1>
<nav class="nav">
    <ul>
        <li><a  class="active" href="voterhome.jsp"><b>Home</b></a></li>
        <li><a href="vformla.jsp"><b>Vote For MLA</b></a></li>
        <li><a href="vformp.jsp"><b>Vote For MP</b></a></li>
        <li><a href="viewresult.jsp"><b>View Results</b></a></li>
        <li><a href="viewgraph.jsp"><b>View Graph</b></a></li>
        <li><a href="logout.jsp"><b>Logout</b></a></li>

    </ul>
</nav>
<br><br><br>

<%

String user = session.getAttribute("username").toString();
%>

<center><h2>Welcome <%=user%></h2></center>

<script  src="js/index.js"></script>

<div class="footer">
    <p>Developed By:1000pojects</p>
</div>

</body>
</html>