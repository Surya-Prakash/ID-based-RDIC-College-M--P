
<%@page import="design.download"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
String namee=request.getParameter("file");
String s=request.getParameter("key");
String me =session.getAttribute("me").toString();
//System.out.println(" user name"+ username);
//System.out.println(" user password"+ password);
Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/idbased","root","root");
            Statement st = con.createStatement();
            String Q = "select * from files where name= '"+namee+"'   ";                    
                    ResultSet rs = st.executeQuery(Q);          
                    
                    if(rs.next()){                        
         
                    if((rs.getString("name").equals(namee))&&(rs.getString("skey").equals(s))&&(rs.getString("friend").equals(me))){
                     session.setAttribute("ff", namee);
                    response.sendRedirect("userdwn.jsp?ms= sucess..!");
                    }
                    else{
                      response.sendRedirect("userpage.jsp?msgrr= Error found..!");
                        //out.println("<script>alert('wrong')</script>");
                    }
                                       }
                    else{
                      response.sendRedirect("userpage.jsp?msgrrr= Error found..!");
                         //out.println("<script>alert('wrong again')</script>");
                    }
            
                       
                    
                    %>