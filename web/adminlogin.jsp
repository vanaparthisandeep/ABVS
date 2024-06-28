<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Electronic Voting System</title>
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
    <br>
<h1 class="heading">Electronic Voting System</h1>
<nav class="nav">
    <ul>
        <li><a href="index.html"><b>Home</b></a></li>
        <li><a  href="voterlogin.jsp"><b>Voter</b></a></li>
        <li><a class="active" href="adminlogin.jsp"><b>Admin</b></a></li>

    </ul>
</nav>
<br><br><br>
<div class="form">
    <div id="signup">
     
    </div>
    <div id="login">
        <h1>Admin Login</h1>
        <form action="adminact.jsp" method="post">

            <div class="field-wrap">
                <label>
                    User Id<span class="req">*</span>
                </label>
                <input type="text"required name="username" autocomplete="off"/>
            </div>
            <div class="field-wrap">
                <label>
                    Password<span type="password"class="req">*</span>
                </label>
                <input type="password"required  name="password"  autocomplete="off"/>
                <div class="field-icon">
                    <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                </div>
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