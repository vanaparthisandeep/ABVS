<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Electronic Voting System</title>
    <link href="css/style.css" rel="stylesheet">
</head>
<%
if(request.getParameter("m1")!=null){%>
    
<script>alert('Voting Sucess')</script>
}  

<%}
if(request.getParameter("m2")!=null){%>

<script>alert(' Failed..!')</script>
 <%
}
%> 
<body>
     <script>
    
    var uc=0,q=0;
    
  function getcomp()
{
var search = document.getElementById("product");
     var url = "getprice1.jsp?product="+search.value;
   if (window.XMLHttpRequest) 
       req = new XMLHttpRequest();
   else if (window.ActiveXObject) 
       req = new ActiveXObject("Microsoft.XMLHTTP");
   req.open("GET", url, true);
   req.onreadystatechange=compcallback;
   req.send(null);
}
  
  function compcallback() 
{
     if (req.readyState == 4) 
   {
        if (req.status == 200) 
       {
         frm.company.remove(0);
         frm.company.remove(1);
         frm.company[0]=new Option("Select"); 
         var message = req.responseText;
         var f1=message.indexOf(":");
         var fitem=message.substring(0,f1);
        
         var sitem=message.substring(f1+1,message.length-1);
         frm.company[1]=new Option(fitem.substring(2),fitem.substring(2));
         frm.company[2]=new Option(sitem,sitem);
         if(sitem!=":")
          frm.company[3]=new Option(sitem,sitem);
         
        }
    }
}

  </script> 
  <br>
<h1 class="heading">Electronic Voting System</h1>
<nav class="nav">
    <ul>
       <li><a href="voterhome.jsp"><b>Home</b></a></li>
        <li><a  href="vformla.jsp"><b>Vote For MLA</b></a></li>
        <li><a   class="active" href="vformp.jsp"><b>Vote For MP</b></a></li>
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
        rs=st.executeQuery("select * from party");
}   catch(Exception e){
    e.printStackTrace();
    }
%>
<center>
<h2><span>Vote For Parliament </span> </h2>
          <br>
          <form name="frm" action="vformpact.jsp" method="post" >
              <table>  
                  
                  
                  
                  
                   <tr>
        <td>Select Party:</td>
        <td>
            <select name="pname" id="product" onChange="getcomp()">
                <option value="">Select</option>
                <%
                while(rs.next()){
                %>
                <option value="<%=rs.getString("pname")%>"><%=rs.getString("pname")%></option>

                <%}%>
            </select>
        </td>
        </tr>
            <tr>
                                
              <td>MP Candidate : </td>
<td>
<select name="mp" id="company" style="width:190%" >
</select>
</td>
</tr>
 <tr>
    <td><button type="submit">Vote</button></td>
    <td></td>
 </tr>
 </table>
 </form>
 </center>

<script  src="js/index.js"></script>

<div class="footer">
    <p>Developed By:1000pojects</p>
</div>

</body>
</html>