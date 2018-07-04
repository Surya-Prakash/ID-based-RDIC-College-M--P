
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String username=request.getParameter("user");
String password=request.getParameter("pass");
System.out.println(" user name"+ username);
System.out.println(" user password"+ password);
Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/idbased","root","root");
            Statement st = con.createStatement();
            String Q = "select * from regpage_user where user= '"+username+"'   ";                    
                    ResultSet rs = st.executeQuery(Q);          
                    
                    if(rs.next()){                        
         
                    if((rs.getString("user").equals(username))&&(rs.getString("pass").equals(password))){
                        session.setAttribute("me", username);
             response.sendRedirect("userpage.jsp?msgg=login sucess");            
                        
                    }
                    else{
                      response.sendRedirect("datauser.jsp?msgrr= Error found..!");
                    }
                                       }
                    else{
                      response.sendRedirect("datauser.jsp?msgrr= Error found..!");
                    }
            
                       
                    
                    %>