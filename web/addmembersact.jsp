<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

		

            <%
			     
            String mname = request.getParameter("mname");    
            String party = request.getParameter("party");
            String consti = request.getParameter("const");
            String type = request.getParameter("type");
            
      
            
					
            try {
						
							
            Connection connection = DbConnection.getconnection();
            PreparedStatement ps=connection.prepareStatement("insert into members values(?,?,?,?)");
            
            ps.setString(1,mname);
            ps.setString(2,party);
            ps.setString(3,consti);            
            ps.setString(4,type);
          
            int x=ps.executeUpdate();
            if(x>0)
            {

                response.sendRedirect("addmembers.jsp?m1=success");

            }
             else{

                 response.sendRedirect("addmembers.jsp?m2=Failed");   

                  }  




              }
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
          