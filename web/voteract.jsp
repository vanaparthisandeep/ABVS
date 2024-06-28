<%@page import="Mail.Mail"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Database.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.Connection"%>

<%

    

                int voterid=Integer.parseInt(request.getParameter("voterid"));      
                
   	        String Password=request.getParameter("password");
                String consti=request.getParameter("const");
                
                   Random r = new Random();
        int key = r.nextInt(10000 - 5000) + 5000; 
        session.setAttribute("key", key);
           String msg = null; 
                try {
                
                Connection connection = DbConnection.getconnection();
                        
			String sql="SELECT * FROM voters where voterid="+voterid+" and password='"+Password+"' and constituency = '"+consti+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			
			if(rs.next())
			{
                        msg = " OTP '"+key+"'";
                        session.setAttribute("email", rs.getString("email"));
                        Mail t= new Mail();
                        t.secretMail(msg, rs.getString("email"), rs.getString("email"));
                        session.setAttribute("voterid", voterid);
                        session.setAttribute("username", rs.getString("username"));
                        session.setAttribute("constituency", rs.getString("constituency"));
                       
			response.sendRedirect("otp.jsp?m1=success");
			
			
			}
			else
			{
			
                         response.sendRedirect("voterlogin.jsp?m2=Failed");   
                            
			}

                }
                
              catch(Exception e)
        {
		out.print(e.getMessage());
	    }  

                        
                        
%>