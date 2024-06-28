<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

		

            <%
			     
          
            String pname = request.getParameter("pname");
            String state = request.getParameter("state");
            String image = request.getParameter("image");
      
            
					
            try {
						
							
            Connection connection = DbConnection.getconnection();
            PreparedStatement ps=connection.prepareStatement("insert into party values(?,?,?)");
            
           
            ps.setString(1,pname);
            ps.setString(2,state);
            ps.setString(3,image);
          
            int x=ps.executeUpdate();
            if(x>0)
            {

                response.sendRedirect("addparties.jsp?m1=success");

            }
             else{

                 response.sendRedirect("addparties.jsp?m2=Failed");   

                  }  




              }
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
          