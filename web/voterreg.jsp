<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Electronic Voting System</title>
    <link href="css/style.css" rel="stylesheet">
</head>
<%
if(request.getParameter("m2")!=null){%>
    
<script>alert('Registration Failed!')</script>


<%}
if(request.getParameter("m1")!=null){%>

<script>alert('Voter Id Is Not Available..!')</script>
 <%
}
%> 
<body>
    <br>
<h1 class="heading">Electronic Voting System</h1>
<nav class="nav">
    <ul>
          <li><a  class="active" href="index.html"><b>Home</b></a></li>
        <li><a href="voterlogin.jsp"><b>Voter</b></a></li>
        <li><a href="adminlogin.jsp"><b>Admin</b></a></li>

    </ul>
</nav>
<div class="form">
    <div class="tab-content">
        <div id="signup">
            <h1>Voter Sign Up</h1>
            <form action="voterregact.jsp" method="post">

                 <div class="field-wrap">
                        <label>
                            Voter Id<span class="req" >*</span>
                        </label>
                        <input type="text" name="voterid" required autocomplete="off" autofocus />
                    </div>
                
                
               
                    <div class="field-wrap">
                        <label>
                            User Name<span class="req" >*</span>
                        </label>
                        <input type="text" name="username" required autocomplete="off" autofocus />
                    </div>

                    
      
                
                
                 <div class="field-wrap">
                    <label>
                        Set A Password<span class="req">*</span>
                    </label>
                    <input type="password" name="password" required autocomplete="off"/>
                </div>

                <div class="field-wrap">
                    <label>
                        Your E-mail Id<span class="req">*</span>
                    </label>
                    <input type="email" name="email" required autocomplete="off"/>
                </div>
                <div class="field-wrap">
                    <label>
                        Enter Your Address<span class="req">*</span>
                    </label>
                    <input type="text" name="address" required autocomplete="off"/>
                </div>
                <div class="field-wrap">
                    <label>
                        Enter Your Mobile No<span class="req">*</span>
                    </label>
                    <input type="text"required name="mobile" autocomplete="off"/>
                </div>
                
                 <div class="field-wrap">
                    <label>
                        Constituency<span class="req">*</span>
                    </label>
                    <input type="text"required name="const" autocomplete="off"/>
                </div>

               

                <button type="submit" class="button button-block"/>Sign Up</button>

            </form>

        </div>
        <div id="login">
        </div>

    </div><!-- tab-content -->

</div><!-- /form -->
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script  src="js/index.js"></script>

<div class="footer">
    <p>Developed By:1000pojects</p>
</div>

</body>
</html>