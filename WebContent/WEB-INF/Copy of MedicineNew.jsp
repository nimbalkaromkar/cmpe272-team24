<!DOCTYPE html>
<%@page import="bean.Disease"%>
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
            <li class="active"><a href="#">Homepathy</a></li>
            <li><a href="#Ayurved">Ayurved</a></li>
            <li><a href="#Chinese">Chinese</a></li>
               <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Others <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="#Faith">Faith Healing</a></li>
                <li><a href="#Placebo">Placebo</a></li> </ul>
             <li><a href="#Features">Features</a></li>
             <li><a href="#Contacts">Contacts</a></li></ul></div></div></nav>

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
       
        </div>
     </div>   
        <!-- testing for dyanamic result generation -->
         <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
         <!--  <h1 class="page-header">Search Results for 'Search Keyword'</h1> -->

          <div  class="row placeholders">
        <!--     testing for dyanamic result generation -->
             <div  id ="test" class=" col-sm-3 col-md-4 "> 
              <!--  ------------------- table test---------------- -->
                <input type="hidden" id="tempValue" name="tempValue" value="<%=session.getAttribute("disease")%>">
        		</div>
      
       
        <!-- table test ----------------------------------------------- -->
        
             <div class="container"> 
    <%--   <h2>Alternate Medicine for "<% =session.getAttribute("diseaseName") %>"</h2> --%>
                                                                                            
      <div class="table-responsive">            
      <table class="table disease" id="mytable" > 
        <tbody>
        
          <tr>
           
            <td><img src="http://www.nursingprograms.com/wp-content/uploads/2013/05/nurses-and-alternative-medicine.jpg"  
            		class="img-thumbnail" alt="Cinque Terre" width="250" height="150"  ></td>
            		<td> "<%= ((bean.Disease)session.getAttribute("diseaseName")).getAlternateMedicineDetails() %>" </td>
          <!--   <td>               hi this is abhinav. I am testing my new site for the tables.<br> <a href="https://www.google.com">read More</a> -->
          </tr>
         
          
        </tbody>
      </table>
      </div>
  </div> 
          
             
             <!--  ------------------ ---------------- script -------------------------------------- -->  
          
          
  <!--  - ----------------- ---------------- script -------------------------------------- -->        
          
          
          </div>
          
  <!-- testing for dyanamic result generation -->
          
           
     
    
           

          
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
