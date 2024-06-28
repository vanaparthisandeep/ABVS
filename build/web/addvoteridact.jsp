<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

		

            <%
			     
            int voterid = Integer.parseInt(request.getParameter("voterid"));
      
            String consti = request.getParameter("const");
      
            
					
            try {
						
							
            Connection connection = DbConnection.getconnection();
            PreparedStatement ps=connection.prepareStatement("insert into voterids values(?,?)");
            
            ps.setInt(1, voterid);
           
            ps.setString(2,consti);
          
            int x=ps.executeUpdate();
            if(x>0)
            {

                response.sendRedirect("addvoterid.jsp?m1=success");

            }
             else{

                 response.sendRedirect("addvoterid.jsp?m2=Failed");   

                  }  




              }
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
          