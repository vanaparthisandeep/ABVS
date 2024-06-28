<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Electronic Voting System</title>
    <link href="css/style.css" rel="stylesheet">
</head>
<%
if(request.getParameter("m1")!=null){%>
    
<script>alert('OTP Sent to Your Mail Sucessfully!')</script>

<%}
if(request.getParameter("m2")!=null){%>

<script>alert('Entered Wrong OTP.!')</script>
 <%
}
%> 
<body>
    <br>
<h1 class="heading">Electronic Voting System</h1>
<nav class="nav">
    <ul>
        <li><a href="index.html"><b>Home</b></a></li>
        <li><a class="active" href="voterlogin.jsp"><b>Voter</b></a></li>
        <li><a href="adminlogin.jsp"><b>Admin</b></a></li>

    </ul>
</nav>
<br>
<div class="form">
    <div id="signup">
        <form action="/" method="post">
        </form>
    </div>
    <%
    
    String email = session.getAttribute("email").toString();
    String voterid = session.getAttribute("voterid").toString();
    String username = session.getAttribute("username").toString();

    
    
    
    %>
    <div id="login">
        <h1>OTP Verification </h1>
        <form action="otpact.jsp" method="post">

            <div class="field-wrap">
               
                <input type="text" value="<%=voterid%>" readonly="" name="voterid" required autocomplete="off"/>
            </div>
            <div class="field-wrap">
               
                <input type="text"required reqdonly="" value="<%=username%>" name="username" autocomplete="off"/>
                <div class="field-icon">
                    <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                </div>
            </div>
             <div class="field-wrap">
                <label>
                    O.T.P<span class="req">*</span>
                </label>
                <input type="text" name="otp" required autocomplete="off"/>
            </div>
            <button class="button button-block"/>Log In</button>
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