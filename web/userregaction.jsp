<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
            String name = request.getParameter("name");
            String user = request.getParameter("user");
            String pass = request.getParameter("pass");
            String mail = request.getParameter("mail");
            String s = request.getParameter("sex");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/idbased", "root", "root");
            Statement st = con.createStatement();
            int i = st.executeUpdate("insert into regpage_user values('" + name + "','" + user + "','" + pass + "','" + mail + "','" + s + "')");
            if (i != 0) {

               response.sendRedirect("datauser.jsp?msg=Register success");

                
            } else {
               response.sendRedirect("datauser.jsp?msgr=Register fails");
            }
            %>