<%@page import="java.sql.*"%>
<%
  String a = null;
  String b = null;
    ResultSet rs=null;
try{
response.setContentType("text/xml");
response.setHeader("Cache-Control", "no-cache");

Class.forName("com.mysql.jdbc.Driver");
Connection co=DriverManager.getConnection("jdbc:mysql://localhost:3306/evm", "root", "root");
String mobile = request.getParameter("product");
System.out.println("Value"+mobile);
String query1 = "select * from members where party ='"+mobile+"' and type = 'MP'";
Statement st1 = co.createStatement();
    rs=st1.executeQuery(query1); 

String cnm="";
while(rs.next())
{
    
    a = rs.getString("manme");
    
  cnm=cnm+rs.getString("manme")+":";
  
 }
out.write(cnm);
 }catch(Exception e)
  { out.write(e.toString()); }
%>