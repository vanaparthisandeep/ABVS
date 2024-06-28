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
}  

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
       <li><a href="voterhome.jsp"><b>Home</b></a></li>
        <li><a  href="vformla.jsp"><b>Vote For MLA</b></a></li>
        <li><a    href="vformp.jsp"><b>Vote For MP</b></a></li>
        <li><a   class="active"  href="viewresult.jsp"><b>View Results</b></a></li>
        <li><a href="viewgraph.jsp"><b>View Graph</b></a></li>
        <li><a href="logout.jsp"><b>Logout</b></a></li>

    </ul>
</nav>
<br><br><br>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

 <%

    String types = request.getParameter("types");
    System.out.println("typeeeeeeeee"+types);
    String value = null;

    String constituency = session.getAttribute("constituency").toString();

    try {
        
        
    if(types.equals("MLA")){
        
        
      value =   "mlaresults";
        
    }    
    
    
        
    if(types.equals("MP")){
        
        
      value = "mpresults";  
        
    }
        
    Connection connection = DbConnection.getconnection();
    PreparedStatement ps = connection.prepareStatement("select * from "+value+" where constituency = '"+constituency+"' order by cnt desc");
    ResultSet rs1 = ps.executeQuery();

    %>
    <p><center><font size="5" color="red">View <%=types%> Results   </font></p><br/>
    
     <table border="2" width="100%">

    <tr>
    <th>Candidate Name</th>
    <th>Party</th>
    <th>Votes</th>
  
    

    </tr>

    <%     if (rs1.next()) {
    %>

    <tr>
    
    <td><%=rs1.getString(1)%></td>
    <td><%=rs1.getString("constituency")%></td>
    <td><%=rs1.getInt("cnt")%></td>
  
    
    </tr>
    <%
    }
    } catch (Exception e) {
        e.printStackTrace();
    }

    %>
    </table>
     
</center>










<script  src="js/index.js"></script>

<div class="footer">
    <p>Developed By:1000pojects</p>
</div>

</body>
</html>