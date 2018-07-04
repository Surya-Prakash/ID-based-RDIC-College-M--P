
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
            String Q = "select * from regpage where user= '"+username+"'   ";                    
                    ResultSet rs = st.executeQuery(Q);          
                    if(rs.next()){                        
         
                    if((rs.getString("user").equals(username))&&(rs.getString("pass").equals(password))){
                        session.setAttribute("us", username);
             response.sendRedirect("owneruserpage.jsp?msggg=login sucess");            
                        
                    }
                    else{
                      response.sendRedirect("dataowner.jsp?msgrr= Error found..!");
                    }
                                       }
                    else{
                      response.sendRedirect("dataowner.jsp?msgrr= Error found..!");
                    }
            
                       
                    
                    %>