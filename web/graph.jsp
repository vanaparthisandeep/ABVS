<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>                     
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
        <li><a   href="viewresult.jsp"><b>View Results</b></a></li>
        <li><a class="active"   href="viewgraph.jsp"><b>View Graph</b></a></li>
        <li><a href="logout.jsp"><b>Logout</b></a></li>

    </ul>
</nav>
<br><br><br>






           <br>
<script type="text/javascript" src="graph/jscharts.js"></script>
<b>Results  Status</b>
<div id="graph">Loading graph...</div>
<center>
<script type="text/javascript">
   
   
var myData=new Array();
var colors=[];



<%
     
    String constituency = session.getAttribute("constituency").toString();
     String types = request.getParameter("types");
    System.out.println("typeeeeeeeee"+types);
    String value = null;

    
     if(types.equals("MLA")){
        
        
      value =   "mlaresults";
        
    }    
    
    
        
    if(types.equals("MP")){
        
        
      value = "mpresults";  
        
    }
        
    
      int i=0;
      Connection connection = DbConnection.getconnection();
      ResultSet rs = null;
      Statement st=connection.createStatement();
      rs = st.executeQuery("select * from "+value+" where constituency = '"+constituency+"' order by cnt desc");   
      while(rs.next())
      {
       %>myData["<%=i%>"]=["<%=rs.getString(1) %>",<%=rs.getInt("cnt")%>];<% 
       i++;
       }
	%>
			
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#cc00a3');
	myChart.setBarOpacity(0.8);
	myChart.setBarBorderColor('#060e11');
	myChart.setBarValues(true);
	myChart.setTitleColor('#f12323');
	myChart.setAxisColor('#777E89');
	myChart.setSize(500,350);
	myChart.setAxisValuesColor('#0a0706');
       
	myChart.draw();
        
        
        </script>                                             
                                                        
</center>                                             
                                                        
                                                        
                                                        
                                                        
       

<script  src="js/index.js"></script>

<div class="footer">
    <p>Developed By:1000pojects</p>
</div>

</body>
</html>                                                 
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                                                        
                   