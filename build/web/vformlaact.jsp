<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

		

            <%
			     
            String voterid = session.getAttribute("voterid").toString();
            String constituency = session.getAttribute("constituency").toString();
            String username = session.getAttribute("username").toString();
            String pname = request.getParameter("pname");                      
            String mla = request.getParameter("mla");
           
            
            
					
            try {
						
							
            Connection connection = DbConnection.getconnection();
            
            String query = "select * from mlavoting where voterid = "+voterid+" and constituency = '"+constituency+"' and username = '"+username+"'";
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(query);
            
            if(rs.next()){
                
             response.sendRedirect("vformla.jsp?m2=success");
            
            }
            else{
                
                 
            PreparedStatement ps=connection.prepareStatement("insert into mlavoting values(?,?,?,?,?)");
            
            ps.setString(1, voterid);
            ps.setString(2,username);            
            ps.setString(3,mla);
            ps.setString(4,pname);	
            ps.setString(5,constituency);
          
            int x=ps.executeUpdate();
            if(x>0)
            {

                response.sendRedirect("vformla.jsp?m1=success");

            }
             else{

                 response.sendRedirect("vformla.jsp?m2=Failed");   

                  }  


            }
                
            

              }
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
          