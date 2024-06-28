<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

		

            <%
			     
            int voterid = Integer.parseInt(request.getParameter("voterid"));
            String username = request.getParameter("username");
            String password = request.getParameter("password");                      
            String email = request.getParameter("email");
            String phone = request.getParameter("mobile");
            String address = request.getParameter("address");
            String consti = request.getParameter("const");
            String status = "waiting";
            
            
					
            try {
						
							
            Connection connection = DbConnection.getconnection();
            
            String query = "select * from voterids where voterid = "+voterid+" and constituency = '"+consti+"'";
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(query);
            
            if(rs.next()){
                
            
            
            PreparedStatement ps=connection.prepareStatement("insert into voters values(?,?,?,?,?,?,?,?)");
            
            ps.setInt(1, voterid);
            ps.setString(2,username);            
            ps.setString(3,password);
            ps.setString(4,email);	
            ps.setString(5,phone);
            ps.setString(6,address);
            ps.setString(7,consti);
            ps.setString(8,status);

            int x=ps.executeUpdate();
            if(x>0)
            {

                response.sendRedirect("voterlogin.jsp?m1=success");

            }
             else{

                 response.sendRedirect("voterreg.jsp?m2=Failed");   

                  }  


            }
            
            else{
                
                 response.sendRedirect("voterreg.jsp?m1=Failed");   
                
            }

              }
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
          