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
        
           <!-- <tr id="tableRow" >
           
            <td><img src="http://www.nursingprograms.com/wp-content/uploads/2013/05/nurses-and-alternative-medicine.jpg"  
            		class="img-thumbnail" alt="Cinque Terre" width="250" height="150"  ></td>
            <td>               hi this is abhinav. I am testing my new site for the tables.<br> <a href="https://www.google.com">read More</a>
          </tr>  -->
         
          
        </tbody>
      </table>
      </div>
  </div> 
          
             
             <!--  ------------------ ---------------- script -------------------------------------- -->  
          
          <script>
       
        
    
        
        	 /*  var a = document.createElement('a');
              a.href = "${pageContext.request.contextPath}/DisplayMedicine"; */
             
              var table = document.getElementById("mytable");
              var row = table.insertRow(0);
              var cell1 = row.insertCell(0);
              var cell2 = row.insertCell(1);
              var oImg = document.createElement("IMG");
              var oVdo = document.createElement("video");
              
              
              <% 
                 
             
              bean.Disease d = (bean.Disease)session.getAttribute("disease");
              
             
              	
            	  String diseaseDetails = d.getDiseaseDetails();/* //.toString(); */
               	 String imageUrls = d.getImageUrl();/* //.toString(); */
               	String alternateMedicineType = d.getAlternateMedicineType();/* //.toString(); */
               	String diseaseName = d.getDiseaseName();/* //.toString(); */
               	String symptoms = d.getSymptoms();/* //;.toString(); */
             	String alternateMedicineName = d.getAlternateMedicineName();/* //.toString(); */
               	 String alternateMedicineVideo = d.getAlternateMedicineVideo();/* //.toString(); */ 
               	String alternateMedicineDetails = d.getAlternateMedicineDetails();/* //.toString(); */
            
             
              
          session.setAttribute("alternateMedicineType",alternateMedicineType );
     		 session.setAttribute("diseaseDetails",diseaseDetails );
              session.setAttribute("imageUrls",imageUrls );
              session.setAttribute("diseaseName",diseaseName);
              session.setAttribute("symptoms",symptoms );
              session.setAttribute("alternateMedicineName",alternateMedicineName );
               session.setAttribute("alternateMedicineVideo",alternateMedicineVideo ); 
              %>
              
              
             
             
         
             
        
             
             var diseaseName = "<%= session.getAttribute("diseaseName") %>";
             var symptoms = "<%= session.getAttribute("symptoms") %>";
             var alternateMedicineName = "<%= session.getAttribute("alternateMedicineName") %>";
              var alternateMedicineVideo = "<%= session.getAttribute("alternateMedicineVideo") %>";
              var alternateMedicineType = "<%= session.getAttribute("alternateMedicineType") %>";
             var diseaseDetails = "<%= session.getAttribute("diseaseDetails") %>";
             var imageUrls = "<%= session.getAttribute("imageUrls") %>";
             var alternateMedicineDetails "<%= session.getAttribute("alternateMedicineDetails") %>";
             
 
              oImg.setAttribute('src', imageUrls);
              oImg.setAttribute('alt', 'Cinque Terre');
              oImg.setAttribute('class', 'img-thumbnail');
              oImg.setAttribute('width','250');
              oImg.setAttribute('height','150');
              
            /*    cell1.appendChild(a); 
               a.appendChild(oImg);
           */
          
          // 		row.appendChild(a);
           a.appendChild(oImg);
            
         //  cell1.appendChild(a);
        
         
      //   oVdo.src = alternateMedicineVideo.toString();
      //       cell1.appendChild(oVdo);
              /* cell1.innerHTML = "NEW CELL1";*/
              cell2.innerHTML = "<b>Disease Name </b>"+diseaseName+"<br><b>Alternate Medicine Type : </b>"
              +alternateMedicineType+"<br>"+"<b>Disease Details : </b>"+diseaseDetails+"<br>"+"<b>Symptoms : </b>"+symptoms
              +"<br>"+"<b>alternateMedicineName : </b>"+alternateMedicineName
              +"<br>"+"<b>AlternateMedicineDetails : </b>"+alternateMedicineDetails+
              "<br>"+"<b>Disease Details : </b>"+diseaseDetails+"<br>";//[0]; 
              //(bean.Disease)d.getDiseaseDetails().toString();//"NEW CELL2" ;
            //  table.appendChild(a);
              
        
         
           
      </script>
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
