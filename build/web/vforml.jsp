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
        <li><a   class="active" href="vformla.jsp"><b>Vote For MLA</b></a></li>
        <li><a href="vformp.jsp"><b>Vote For MP</b></a></li>
        <li><a href="viewresult.jsp"><b>View Results</b></a></li>
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
             
String constituency = session.getAttribute("constituency").toString();

ResultSet rs=null;
 try{
       
         Connection connection = DbConnection.getconnection();
        Statement st=connection.createStatement();
        rs=st.executeQuery("select * from members where constituency = '"+constituency+"' and type = 'MLA'");
}   catch(Exception e){
    e.printStackTrace();
    }
%>
<center>
<h2><span>Vote For Assembly</span> </h2>
          <br>
          <form name="frm" action="vformlaact.jsp" method="post" >
              <table>  
                  
            <tr>
                                
              <td>Party : </td>

                
            </tr>      
                  
                  
                   <tr>
        <td>Member Name:</td>
        <td>
            <select name="name" id="product" onChange="getcomp()">
                <option value="">Select</option>
                <%
                while(rs.next()){
                %>
                <option value="<%=rs.getString("manme")%>"><%=rs.getString("manme")%></option>

                <%}%>
            </select>
        </td>
        </tr>
            
                  
                  
                       
                   <tr>
                        <td><b>Mobile Booklet:</b></td>
                        <td>  <input type="file"  name="image" required></td></tr>
                       
                           
                                   
                      
                               
                  
                             
                                          <tr><td>  <button type="submit">Sumbit</button>
                             </td></tr>
                                         </table>
                        </form>
</center>

<script  src="js/index.js"></script>

<div class="footer">
    <p>Developed By:1000pojects</p>
</div>

</body>
</html>