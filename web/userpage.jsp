<!DOCTYPE html>
<html lang="en">
<head>
    <script>
function check(){
    
    var a = document.ff.name.value;
    var b = document.ff.key.value;
    if(a==0){
        alert('Plz enter File name');
        document.getElementById("name").focus;
        return false;
    }
    if(b==0){
        alert('Plz enter the Key');
        document.getElementById("key").focus();
        return false;
    }
    
}        
        
    </script>
    
    
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
              <li><a href="userpage.jsp">Home</a></li>
              <li><a href="about.jsp">About</a></li>
              
        <%
if (request.getParameter("msgg") != null) {
                out.println("<script>alert('Login Sucess..!')</script>");
            }      
if (request.getParameter("dwn") != null) {
                out.println("<script>alert('Downloaded Sucess C:\\Documents and Settings\\ibn\\Desktop\\Dynamic ..!')</script>");
            }     
if (request.getParameter("dwnn") != null) {
                out.println("<script>alert('Downlaoded Fails ..!')</script>");
            }       
if (request.getParameter("msgrr") != null) {
                out.println("<script>alert('Incorrect Secert Key ..!')</script>");
            }   
if(request.getParameter("msgrrr") != null) {
                out.println("<script>alert(' Incorrect File name ..!')</script>");
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
String me =session.getAttribute("me").toString();
%>
     <div id="slogan"> Data-User<span><font color="red"><%=me%></font></span> </div>
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
              <h2 class="pad_bot1">Enter File Name And Secret Key..!</h2>
            </div>
          
            <div class="pad_left1">
              <div class="box2">
                <div class="wrapper">
                  <div class="cols">
                   
                  </div>
                  <div class="cols pad_left2">
                    
                  </div>
                </div>
              </div>
                <form action="user_downloadaction.jsp" method="get" name="ff" onsubmit="return check()">
                    File Name:    &nbsp;&nbsp;<input type="text" name="file" style="height: 30PX; background-color:#ccffff;" id="name"/><br><br>
                   Secret Key: <input type="text" name="key" style="height: 30PX; background-color:#ccffff;" id="key"/><br><br>
                      <p style="margin-left: 100px;"> 
                          <input type="submit" class="button"/>&nbsp;&nbsp;&nbsp;
                          <input type="reset" class="button"/></p>
        </form>
            </div>
              
              
        </div>
      </div>
    </section>
    <!-- content -->
    <!-- footer -->
    
<script type="text/javascript">Cufon.now();</script>
<div align=center>copyright: jp infotech</div>
<div style="position: absolute; left:315px; top: 100px">
<img src="images/hd.png" height="80" width="550">
</div>

<div style="position: absolute; left:635px; top: 433px">
<img src="images/dn.png" height="180" width="230"></div>
<div style="position: absolute; left:880px; top: 380px">
<img src="images/C.png" height="220" width="280"></div>
  </body>
</html>