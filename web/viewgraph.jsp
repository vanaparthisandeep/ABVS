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
        <li><a  href="viewresult.jsp"><b>View Results</b></a></li>
        <li><a   class="active"  href="viewgraph.jsp"><b>View Graph</b></a></li>
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

    String constituency = session.getAttribute("constituency").toString();

  
    Connection connection = DbConnection.getconnection();
    PreparedStatement ps = connection.prepareStatement("select * from types");
    ResultSet rs1 = ps.executeQuery();

    %>
    <p><center><center>
<h2><span>View Graph</span> </h2>
          <br>
          <form name="frm" action="graph.jsp" method="post" >
              <table>  
                  
                  
                  
                  
                   <tr>
        <td>Select Party:</td>
        <td>
            <select name="types" >
                <option value="">Select</option>
                <%
                while(rs1.next()){
                %>
                <option value="<%=rs1.getString("types")%>"><%=rs1.getString("types")%></option>

                <%}%>
            </select>
        </td>
        </tr>
            
 <tr>
    <td><button type="submit">Results</button></td>
    <td></td>
 </tr>
 </table>
 </form>
 </center>
</center>










<script  src="js/index.js"></script>

<div class="footer">
    <p>Developed By:1000pojects</p>
</div>

</body>
</html>