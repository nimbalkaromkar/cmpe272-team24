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
            <li class="active"><a href="${pageContext.request.contextPath}/homeHandler">Home</a></li>
            <li><a href="">What's this?</a></li>
            <li><a href="">Contact Us</a></li>
               <li class="dropdown"></div></div></nav>

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
                
        		</div>
      
       
        <!-- table test ----------------------------------------------- -->
        
             <div class="container"> 
    
                     <form id="ResultHandler" method="post" name="ResultHandler" action="ResultHandler" onsubmit="">
     <input style="height:32px;color:black;" type="text" placeholder="Type disease or symptom" name="keyword" size="50">
				<button class="btn btn-primary">   Search   </button> 
</form>                                                                       
      <div class="table-responsive">            
      <table class="table " id="mytable" > 
        <tbody>
        
          <tr>
            <%  
            
            bean.Disease d = (bean.Disease)session.getAttribute("disease");
        		System.out.println("d on third page="+d);
        		String videoUrl = d.getAlternateMedicineVideo();
        		System.out.println("videoUrl="+videoUrl);
            /* //String videoUrl = ((bean.Disease)session.getAttribute("disease")).getAlternateMedicineVideo(); */
        		
           
           %> 
           <td><iframe width="430" height="315" 
             src= "<%=((bean.Disease)session.getAttribute("disease")).getAlternateMedicineVideo() %>"
             frameborder="0" allowfullscreen></iframe></td>
            		<td align="left" > <b>Disease Name : </b><%= ((bean.Disease)session.getAttribute("disease")).getDiseaseName() %><br> 
					<b>Disease Details : </b><%= ((bean.Disease)session.getAttribute("disease")).getDiseaseDetails() %><br>
					<b>Symptoms : </b><%= ((bean.Disease)session.getAttribute("disease")).getSymptoms() %><br>
            		<b>Alternate Medicine Type : </b><%= ((bean.Disease)session.getAttribute("disease")).getAlternateMedicineType() %><br>
					<b>Alternate Medicine Name : </b><%= ((bean.Disease)session.getAttribute("disease")).getAlternateMedicineName() %><br>
					<b>Alternate Medicine Details : </b><%= ((bean.Disease)session.getAttribute("disease")).getAlternateMedicineDetails() %><br>
	
            		</td>
            
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
