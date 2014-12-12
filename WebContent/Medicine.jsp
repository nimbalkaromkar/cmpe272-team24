<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Dashboard Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/dashboard.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

   
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation"> 
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Alternate Medicine</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="">Home</a></li>
            <li><a href="">What's This? </a></li>
            <li><a href="">Contact Us</a></li>
               <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Others <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
               
                 </ul>
             
             </li></ul></div></div></nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active"><a href="#">Categories<span class="sr-only">(current)</span></a></li>
            <li><a href="#">Ayurved</a></li>
            <li><a href="#">Homeopathy</a></li>
            <li><a href="#">Naturopathy</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="">Chiropractic</a></li>
            <li><a href="">Energy Medicine</a></li>
            <li><a href="">Acupuncture</a></li>
            <li><a href="">traditional chinese medicine</a></li>
            <li><a href="">Christian faith healing</a></li>
          </ul>
          
        </div>
        <!-- testing for dyanamic result generation -->
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">Medicine Details</h1>

          <div  class="row placeholders">
            <!-- testing for dyanamic result generation -->
             <div id ="test"  class=" col-sm-3 col-md-4 ">
             <iframe width="430" height="315" 
             src="//www.youtube.com/embed/0RPhXu7rPjQ?list=UU31HYtud_6xpi71vpv8A74w" 
             frameborder="0" allowfullscreen></iframe>
 
             
             
             <!-- col-xs-6 col-sm-3 placeholder--> 
 <!--  -------------------- Scripting --------------------- -->      
    <!--       <script>
          var i = 4;
        
          var images = new Array("images/a.JPG","images/b.JPG","images/c.JPG");
          
          
          
         
        	  var a = document.createElement('a');
              a.href = "${pageContext.request.contextPath}/DisplayMedicine";
             // a.action = "DisplayMedicine";
          var oImg = document.createElement("IMG");
         // var oImg=document.createElement("img");
          oImg.setAttribute('src', images[i]);
          oImg.setAttribute('alt', 'Generic placeholder thumbnail');
          oImg.setAttribute('class', 'img-responsive');
          
           var txt = document.createElement("p");
          
          var text = document.createTextNode("this is a test text");
          
          txt.appendChild(text); 
          
          var test = document.getElementById("test");
          var br = document.createElement('br');
          /*  var btn = document.createElement('BUTTON');
          var t = document.createTextNode("CLICK ME");       
          btn.appendChild(t); */
          a.appendChild(oImg);
        //  test.appendChild(oImg);
       ///   test.appendChild(btn);
          
      //    test.appendChild(txt);
       test.appendChild(a);
          test.appendChild(br);
          test.appendChild(br);
          test.appendChild(br);
         /*   */
          
          </script> -->
          
    <!--  -------------------- Scripting --------------------- -->            
          </div>
          </div>
          
          
          <!-- testing for dyanamic result generation -->
          
           
     
     <!-- commented for test -->
         <%--     <div class="col-xs-6 col-sm-3 placeholder">
            <%
			 bean.Disease d = (bean.Disease)session.getAttribute("disease");
 			%>
            <a href="/DisplayMedicine/test.jsp"><img src="images/a.JPG" class="img-responsive" alt="Generic placeholder thumbnail"></a>
              <h4>Label</h4>
              <span class="text-muted"><%= d.getImagepath() %></span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <a href="#"><img src="images/b.JPG" class="img-responsive" alt="Generic placeholder thumbnail"></a>
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <a href="#"><img src="images/c.JPG" class="img-responsive" alt="Generic placeholder thumbnail"></a>
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <a href="#"><img src="images/d.jpg" class="img-responsive" alt="Generic placeholder thumbnail"></a>
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <a href="#"><img src="images/e.jpg" class="img-responsive" alt="Generic placeholder thumbnail"></a>
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="images/f.jpg" class="img-responsive" alt="Generic placeholder thumbnail"></a>
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <a href="#"><img src="images/butterfly.jpg" class="img-responsive" alt="Generic placeholder thumbnail"></a>
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <a href="#"><img src="images/sunset.jpg" class="img-responsive" alt="Generic placeholder thumbnail"></a>
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div> 
 --%>            
            <!-- commented for test -->
          </div>

        
           
       <!--    </div> -->
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <script src="../../assets/js/docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
