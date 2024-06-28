<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Electronic Voting System</title>
    <link href="css/style.css" rel="stylesheet">
</head>
<%
if(request.getParameter("m1")!=null){%>
    
<script>alert('Partie Added Sucess')</script>


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
        <li><a class="active" href="addparties.jsp"><b>Add Parties</b></a></li>
        <li><a href="addmembers.jsp"><b>Add Members</b></a></li>       
        <li><a href="resultanalysis.jsp"><b>Result Analysis</b></a></li>
        <li><a href="logout.jsp"><b>Logout</b></a></li>

    </ul>
</nav>
<br><br>
<div class="form">
    <div id="signup">
        <form action="/" method="post">
        </form>
    </div>
    <div id="login">
        <h1>Add Parties</h1>
        <form action="addpartiesact.jsp" method="post">

            <div class="field-wrap">
                <label>
                    Party Name<span class="req">*</span>
                </label>
                <input name="pname" type="text"required autocomplete="off"/>
            </div>
            <div class="field-wrap">
                <label>
                    State<span type="text" class="req">*</span>
                </label>
                <input name="state" type="text"required autocomplete="off"/>
                </div>
            <div class="field-wrap">
                <h3 style="font-size: 22px;color:#899" >&nbsp Add Image<span class="req">*</span></h3>
                <span style="font-size: 10px"><input name="image" type="file"required autocomplete="off"/></span>
                </div>
            <button class="button button-block"/>Submit</button>
        </form>
    </div>
</div>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script  src="js/index.js"></script>

<div class="footer">
    <p>Developed By:1000pojects</p>
</div>

</body>
</html>