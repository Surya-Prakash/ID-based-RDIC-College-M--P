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
              <h2 class="pad_bot1">File Download</h2>
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
                  <table border="2" style="width: 550px; alignment-adjust: central; ">
                
                <tr style="color: red; background-color: #ccffff; alignment-adjust:auto; font-family: fantasy; font-size: 18px;">
                       <td><font size="3">FILE NAME</font></td>
                       <td align="center"><font size="3">SECERT KEY</font></td>
                   <td align="center"><font size="3">SELECTED USERS</font></td>
                   <td align="center"><font size="3">STATUS</font></td>
                   <td align="center"><font size="3">DOWNLOAD</font></td>
                   <td align="center"><font size="3">View</font></td>
                    
                   
               </tr>
<%                              
        String  fname=null,s=null,f=null;
        
Class.forName("com.mysql.jdbc.Driver");	
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/idbased", "root", "root");     


Statement st1 = conn.createStatement();

ResultSet rs1 = st1.executeQuery("select * from  files where user='"+me+"'");
while(rs1.next()){
fname=rs1.getString("name");
s=rs1.getString("skey");
f=rs1.getString("friend");

       %>   
       <tr style="color: #0000cc; background-color: #ffccff">
          <form action="download" method="get" >
              <td><input type="text" name="file" value="<%=fname%>" style="height: 40px; background-color: #ffccff; font-family: monospace; font-weight: bold" readonly ></td>
             
              <td align="center"><%=s%></td>
       <td align="center"> <%=f%></td>
       <td align="center"><b><font color="#0B6121">PROTECTED</font></b></td>
       <td align="center"><input type="submit" value="Click here" class="button"></td>
       </form>
       <form action="view.jsp" method="get"><td align="center"><input type="submit" value="View" class="button"></td></form>
     <%

}                                     
%>
</tr>
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
<img src="images/D.png" height="220" width="280"></div>
  </body>
</html>