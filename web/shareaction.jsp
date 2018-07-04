<%@page import="design.mail"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
            String mail =null;
            String me =session.getAttribute("us").toString();
            String fm =session.getAttribute("nn").toString();
            //String mail =session.getAttribute("mm").toString();
            String frnd = request.getParameter("user");
            Random r = new Random();
            int ii = r.nextInt(100000-50000)+50000;
            String k = Integer.toString(ii);
           // String k1 = ii+"";
            System.out.println(" secert key is:"+ ii);
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/idbased", "root", "root");
            Statement st = con.createStatement();
            Statement st1 = con.createStatement();
           ResultSet rs = st1.executeQuery("select * from regpage_user where user='"+frnd+"'");
            if(rs.next()){
            mail = rs.getString("mail");
            System.out.println(" friend name"+mail);
            }
            int i = st.executeUpdate("update files set user ='" + me + "',friend ='" + frnd + "', skey='"+ii+"' where name = '"+session.getAttribute("nn").toString()  +"' ");
            if (i != 0) {
            mail m=new mail();
            m.mailsend(k, mail,fm);
                             
               response.sendRedirect("share.jsp?sh=Secert key Send success");

                
            } else {
               response.sendRedirect("share.jsp?shr=Action fails");
            }
            %>