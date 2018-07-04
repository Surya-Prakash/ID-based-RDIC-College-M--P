<%@page import="design.TrippleDes"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Identity-Based Secure Distributed Data Storage Schemes</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.5.2.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Molengo_400.font.js"></script>
<script type="text/javascript" src="js/Expletus_Sans_400.font.js"></script>
<!--[if lt IE 9]>
<script type="text/javascript" src="js/html5.js"></script>
<style type="text/css">.bg, .box2{behavior:url("js/PIE.htc");}</style>
<![endif]-->
</head>
<body id="page2">
<div class="body1">
  <div class="main">
    <!-- header -->
    <header>
      <div class="wrapper">
        <nav>
          <ul id="menu">
              <li><a href="index.jsp">Logout</a></li>
              <li><a href="owneruserpage.jsp">Home</a></li>
              <li><a href="about.jsp">About</a></li>
              <li><a href="dataowner.jsp">Data-Owner</a></li>
              <li><a href="owneruserpage.jsp">File Upload</a></li>
              <li><a href="share.jsp">File Share</a></li>
              <li><a href="filedown.jsp">File Download</a></li>
        <%
if (request.getParameter("msg") != null) {
                out.println("<script>alert('File uploaded Sucess..!')</script>");
            }        
if (request.getParameter("msgg") != null) {
                out.println("<script>alert('File not uploaded ..!')</script>");
            }        
%>     
             
            
          </ul>
        </nav>
        <ul id="icons">
          <li><a href="#"><img src="images/icons1.jpg" alt=""></a></li>
          <li><a href="#"><img src="images/icons2.jpg" alt=""></a></li>
        </ul>
      </div>
      <div class="wrapper">
        <h1><a href="index.html" id="logo">Learn Center</a></h1>
      </div>
     <%
String me =session.getAttribute("us").toString();
%>
     <div id="slogan"> Data-Owner<span><%=me%></span> </div>
    </header>
    <!-- / header -->
  </div>
</div>
<div class="body2">
  <div class="main">
    <!-- content -->
    <section id="content">
      <div class="box1">
        <div class="wrapper">
          <article class="col1">
            <div class="pad_left1">
              <h2 class="pad_bot1">File Encrypted Form..!!</h2>
            </div>
          
            <div class="pad_left1">
              <div class="box2">
                <div class="wrapper">
                  
                   
                  </div>
                  <div class="cols pad_left2">
                    
                  </div>
                </div>
              </div>
                <div class="cols">
                 
                    
                    
                    
<table border="2"style="width: 500px;" >
                              
                                <%
                                    Blob blob = null; 
                                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/idbased", "root", "root");  
                                    Statement st = conn.createStatement();
                                    ResultSet rs = st.executeQuery("select * from files");//  where id = '" + request.getQueryString() + "' ");
                                    while (rs.next()) {
                                        blob = rs.getBlob("file");
                                    }
                                    byte a[] = blob.getBytes(1, (int) blob.length());
                                    String str = new String(a, "UTF-8");
                                    String enc = new TrippleDes().encrypt(str);
                                    %>
                                    <textarea style="height: 500px;width: 600px;"> <%=enc%></textarea>
                            
                              
                            </table>
</div>
            </div>
              
              
        </div>
      </div>
    </section>
    <!-- content -->
    <!-- footer -->
    
<script type="text/javascript">Cufon.now();</script>
<div align=center>copyright: jp infotech</div>
<div style="position: absolute; left:315px; top: 100px">
<img src="images/hd.png" height="80" width="550"></div>

<div style="position: absolute; left:880px; top: 380px">
<img src="images/en.png" height="220" width="280"></div>
  </body>
</html>