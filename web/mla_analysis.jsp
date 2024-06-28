<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

		

            <%
			     
         int i = 0;
            
      			
            try {
						
							
            Connection connection = DbConnection.getconnection();
            
            String quer = "delete from mlaresults";
            Statement s = connection.createStatement();
            s.executeUpdate(quer);
            
            
            
            String query = "select distinct constituency from mlavoting ";
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(query);
            
            while(rs.next()){
                
                
                
            String query1 = "select distinct mla from mlavoting  where constituency = '"+rs.getString("constituency")+"'";
            Statement st1 = connection.createStatement();
            ResultSet rs1 = st1.executeQuery(query1);  
                
                
                
            while(rs1.next()){
                
                
                
            String query2 = "select * from mlavoting  where constituency = '"+rs.getString("constituency")+"' and mla = '"+rs1.getString("mla")+"'";
            Statement st2 = connection.createStatement();
            ResultSet rs2 = st2.executeQuery(query2);     
                
                
                while(rs2.next()){
                    
                    
                    i++;
                    
                }
                
                PreparedStatement ps = connection.prepareStatement("insert into mlaresults values (?,?,?)");
                ps.setString(1,rs1.getString("mla"));
                ps.setString(2,rs.getString("constituency"));
                ps.setInt(3, i);
                ps.executeUpdate();
                
                i=0;
            }
            
                
           
            
            }


              
            
            
            
            
            
            
            
            
            
                  response.sendRedirect("resultanalysis.jsp?m1=success");
            
            
            
            
            
            }
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
          