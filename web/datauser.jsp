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
<%
 if (request.getParameter("msg") != null) {
                out.println("<script>alert('Register Sucess..!')</script>");
            }
        
            if (request.getParameter("msgr") != null) {
                out.println("<script>alert('Register error')</script>");
                                             } 
 if (request.getParameter("msgg") != null) {
                out.println("<script>alert('Login Sucess..!')</script>");
            }
        
            if (request.getParameter("msgrr") != null) {
                out.println("<script>alert('Loing error')</script>");
                                             } 
 %>
<body id="page2">
<div class="body1">
  <div class="main">
    <!-- header -->
    <header>
      <div class="wrapper">
        <nav>
          <ul id="menu">
               <li><a href="index.jsp">Home</a></li>
              <li><a href="about.jsp">About</a></li>
              <li><a href="dataowner.jsp">Data-Owner</a></li>
            <li><a href="datauser.jsp">Data-User</a></li>
             
             
            
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
     <div id="slogan"> Data-User</div>
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
              <h2 class="pad_bot1">Sign Here</h2>
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
                 <article class="col_4 pad_left2">
               
                     <form name="f" action="useraction.jsp" method="get" onsubmit="return check()">
                  <div class="wrapper">
                    <div class="bg">
                        UserName:  <input type="text" name="user" id="user" style="background-color: #99ffff; height: 30px;"/><br><br>
                        Password:&nbsp;&nbsp;<input type="password" name="pass" id="pass" style="background-color: #99ffff; height: 30px;">
                    </div>
                  </div>
                         <input type="submit" value="Sign In" class="button" style="margin-left: 100px; width: 100px;">
                     </form>
              </article>
            </div>
              
              <a href="datauserreg.jsp" class="button"><span><span>Sign Up</span></span></a> </article>
         
        </div>
      </div>
    </section>
    <!-- content -->
    <!-- footer -->
    
<script type="text/javascript">Cufon.now();</script>
<div align=center>copyright: jp infotech</div>
<div style="position: absolute; left:315px; top: 100px">
<img src="images/hd.png" height="80" width="550"></div>
  </body>
</html>