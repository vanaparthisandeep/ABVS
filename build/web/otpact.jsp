<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

		

            <%
			     
            String voterid = session.getAttribute("voterid").toString();
            String constituency = session.getAttribute("constituency").toString();
            String username = session.getAttribute("username").toString();
            int otp = Integer.parseInt(request.getParameter("otp"));                      
            String key = session.getAttribute("key").toString();
            int k = Integer.parseInt(key);
           
            
            
					
            try {
						
	
            
            if(otp==k){
                
             response.sendRedirect("voterhome.jsp?m1=success");
            
            }
            else{
                
                 
           
                response.sendRedirect("otp.jsp?m2=success");

            


            }
                
            

              }
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
          