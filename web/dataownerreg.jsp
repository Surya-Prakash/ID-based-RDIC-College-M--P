<!DOCTYPE html>
<html lang="en">
<head>
    <script>
        function check(){
           var a  = document.f.name.value;
           var b  = document.f.user.value;
           var c  = document.f.pass.value;
           var d  = document.f.mail.value;
           var e  = document.f.sex.value;
           if(a==0){
               alert('Plz enter your name');
               document.getElementById("name").focus();
               return false;
               
           }
           if(b==0){
               alert('Plz enter your Username');
               document.getElementById("user").focus();
               return false;
               
           }
           if(c==0){
               alert('Plz enter your password');
               document.getElementById("pass").focus();
               return false;
               
           }
           var atpos=d.indexOf("@");
var dotpos=d.lastIndexOf(".");
if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
  {
  alert("Not a valid e-mail address");
  return false;
  }
           if(d==0){
               alert('Plz enter your mailId');
               document.getElementById("mail").focus();
               return false;
               
           }
           if(e==0){
               alert('Plz select your gender');
               document.getElementById("sex").focus();
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
     <div id="slogan"> Data-Owner </div>
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
               
                     <form id="newsletter" name="f" action="oregaction.jsp" method="get" onsubmit="return check()">
                  <div class="wrapper">
                    <div class="bg">
                    Name:  <input type="text" name="name" id="name"><br>
                    UserName:  <input type="text" name="user" id="user"><br>
                    Password:<input type="password" name="pass" id="pass">
                    Mail Id:<input type="text" name="mail" id="mail">
                    Gender:<select name="sex" id="sex">
                        <option>Male</option>
                        <option>Female</option>
                    </select>
                    </div>
                  </div>
                 
              
              </article>
            </div>
              &nbsp;&nbsp;&nbsp;<span><input type="submit" class="button" value="Sign In" ></span>&nbsp;&nbsp;&nbsp;
              </form>
              <a href="dataowner.jsp" class="button"><span><span>Back</span></span></a> </article>
         
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