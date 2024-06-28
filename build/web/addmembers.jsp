<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Electronic Voting System</title>
    <link href="css/style.css" rel="stylesheet">
</head>
<%
if(request.getParameter("m1")!=null){%>
    
<script>alert('Member Added Sucess')</script>


<%}
if(request.getParameter("m2")!=null){%>

<script>alert(' Failed..!')</script>
 <%
}
%> 
<body>
    <br>
    <%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
  <%
             


ResultSet rs=null;
 try{
       
         Connection connection = DbConnection.getconnection();
        Statement st=connection.createStatement();
        rs=st.executeQuery("select * from party");
}   catch(Exception e){
    e.printStackTrace();
    }
%>
<h1 class="heading">Electronic Voting System</h1>
<nav class="nav">
    <ul>
        <li><a href="adminhome.jsp"><b>Home</b></a></li>
        <li><a href="addvoterid.jsp"><b>Add Voter ID</b></a></li>
        <li><a href="addparties.jsp"><b>Add Parties</b></a></li>
        <li><a class="active" href="addmembers.jsp"><b>Add Members</b></a></li>       
        <li><a href="resultanalysis.jsp"><b>Result Analysis</b></a></li>
        <li><a href="logout.jsp"><b>Logout</b></a></li>

    </ul>
</nav>
<br>
<div class="form">
    <div id="signup">
        <form action="/" method="post">
        </form>
    </div>
    <div id="login">
        <h1>Add Members</h1>
        <form action="addmembersact.jsp" method="post">

            <div class="field-wrap">
                <label>
                    Member Name<span class="req">*</span>
                </label>
                <input name="mname" type="text"required autocomplete="off"/>
            </div>
             <div class="field-wrap">
            <select name="party" required="">
                <option value="">Select</option>
                <%
                while(rs.next()){
                %>
                <option value="<%=rs.getString("pname")%>"><%=rs.getString("pname")%></option>

                <%}%>
            </select>
             </div>
               
<!--                //
                 
                     <option value="">Select</option>
                     <option value="BJP">BJP</option>
                     <option value="Congress">Congress</option>
                     <option value="TRS">TRS</option>
                     <option value="TDP">TDP</option>
                     
                 </select>-->
             
           
            <div class="field-wrap">
                <label>
                    Constituency<span type="text" class="req">*</span>
                </label>
                <input type="text"required name="const" autocomplete="off"/>
            </div>
                 <div class="field-wrap">
                 <label>
                    Constituency<span type="text" class="req">*</span>
                </label>
               
                 <select name="type" required="">
                     <option value="">Select</option>
                     <option value="MLA">MLA</option>
                     <option value="MP">MP</option>
                     
                 </select>
             
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