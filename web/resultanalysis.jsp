<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Electronic Voting System</title>
    <link href="css/style.css" rel="stylesheet">
</head>
<%
if(request.getParameter("m1")!=null){%>
    
<script>alert('Calulated Sucess!')</script>

<%}
if(request.getParameter("m2")!=null){%>

<script>alert(' Failed..!')</script>
 <%
}
%> 
<body>
    <br>
<h1 class="heading">Electronic Voting System</h1>
<nav class="nav">
    <ul>
        <li><a href="adminhome.jsp"><b>Home</b></a></li>
        <li><a href="addvoterid.jsp"><b>Add Voter ID</b></a></li>
        <li><a href="addparties.jsp"><b>Add Parties</b></a></li>
        <li><a href="addmembers.jsp"><b>Add Members</b></a></li>      
        <li><a class="active" href="resultanalysis.jsp"><b>Result Analysis</b></a></li>
        <li><a href="logout.jsp"><b>Logout</b></a></li>

    </ul>
</nav>
<br><br><br>

<center>
    <a href="mla_analysis.jsp"><button>MLA Analysis</button></a>
<a href="mp_Analysis.jsp"><button>MP Analysis</button></a>
</center>


<script  src="js/index.js"></script>

<div class="footer">
    <p>Developed By:1000pojects</p>
</div>

</body>
</html>