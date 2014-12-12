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
          <a class="navbar-brand" href="${pageContext.request.contextPath}/homeHandler">Alternate Medicine</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="${pageContext.request.contextPath}/homeHandler">Home</a></li>
            <li><a href="">What's This?</a></li>
            <li><a href="">Contact Us</a></li>
               <li class="dropdown">
              
              </div></div></nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <ul class="nav nav-sidebar">
            <li class="active"><a href="#">Categories<span class="sr-only">(current)</span></a></li>
            <li><a href="#">Ayurvedic</a></li>
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
             <form id="ResultHandler" method="post" name="ResultHandler" action="ResultHandler" onsubmit="">
     <input style="height:32px;color:black;" type="text" placeholder="Type disease or symptom" name="keyword" size="50">
				<button class="btn btn-primary">   Search   </button> 
</form> 
      <h2>Alternative Medicines for <%=session.getAttribute("keyword")%></h2>
                                                                                            
      <div class="table-responsive">            
      <table class="table disease" id="mytable" > 
        <tbody>
        
           <!-- <tr id="tableRow" >
           
            <td><img src="http://www.nursingprograms.com/wp-content/uploads/2013/05/nurses-and-alternative-medicine.jpg"  
            		class="img-thumbnail" alt="Cinque Terre" width="250" height="150"  ></td>
            <td>               hi this is abhinav. I am testing my new site for the tables.<br> <a href="https://www.google.com">Know More</a>
          </tr>  -->
         
          
        </tbody>
      </table>
      </div>
  </div> 
          
             
             <!--  ------------------ ---------------- script -------------------------------------- -->  
          
          <script>
           var i = 0;
        
          var images = new Array("images/a.JPG","images/b.JPG","images/c.JPG");
          
          
          var resultCount = "<%= (Integer)session.getAttribute("resultCount") %>";
          for(i=0;i<resultCount;i++){
        	  var a = document.createElement('a');
              a.href = "${pageContext.request.contextPath}/DisplayMedicine";
             
              var table = document.getElementById("mytable");
              var row = table.insertRow(i);
              var cell1 = row.insertCell(0);
              var cell2 = row.insertCell(1);
              var oImg = document.createElement("IMG");
              
              <% 
                 
              //bean.Disease d[]  = (bean.Disease[])session.getAttribute("disease"); //(bean.Disease[])
              java.util.ArrayList<bean.Disease> d = (java.util.ArrayList<bean.Disease>)session.getAttribute("disease");
              
              String testString[]=new String[10];
              String imageUrls[]=new String[10];
              String alternateMedicineType[] = new String[10];
              String diseaseName=null;
              int resultCount = ((Integer)session.getAttribute("resultCount")).intValue();
              for(int i=0;i<resultCount;i++)
              {
              	 /* testString[i] = d.[i].getDiseaseDetails().toString();
              	 imageUrls[i] = d[i].getImageUrl().toString();
              	alternateMedicineType[i]=d[i].getAlternateMedicineType().toString();
              	diseaseName = d[i].getDiseaseName().toString(); */
              	
            	  testString[i] = d.get(i).getDiseaseDetails().toString();
               	 imageUrls[i] = d.get(i).getImageUrl().toString();
               	alternateMedicineType[i]=d.get(i).getAlternateMedicineType().toString();
               	diseaseName = d.get(i).getDiseaseName().toString();
              	
              }
              /* String testString[]=new String[]{""};
              for(int i=0;i<10;i++){  //!d[i].getDiseaseDetails().equals("")
              testString[i] = d[i].getDiseaseDetails();
              } */
           
     		 session.setAttribute("testString",testString );
              session.setAttribute("imageUrls",imageUrls );
              session.setAttribute("diseaseName",diseaseName);
              %>
              
              
              var testString =[1,2,3];//= new array("Saab", "Volvo", "BMW");
              
             
            	  
           <%--  testString = "<%=(session.getAttribute("testString")) %>"; --%>
             
        //     testString = ${sessionScope.testString};
             
             /* for disease details*/ 
             var diseaseDetails = [ 
<% 
    String[] options = (String[])session.getAttribute("testString");
    for (int i = 0; i < options.length; i++) {
%>
        "<%= options[i] %>"
<%
        if (i + 1 < options.length) {
%>
            ,
<%
        }
    }
%>
    ];
             /* for disease details*/
             /* for image urls*/ 
             var imageUrls = [ 
<% 
    String[] imageurls = (String[])session.getAttribute("imageUrls");
    for (int i = 0; i < imageurls.length; i++) {
%>
        "<%= imageurls[i] %>"
<%
        if (i + 1 < imageurls.length) {
%>
            ,
<%
        }
    }
%>
    ];
             /* for image urls*/
             
             /* for alternate Medicine types*/ 
             var alternateMedicineType = [ 
<% 
    String[]alternateMedicinetype  = (String[])session.getAttribute("alternateMedicineType");
    for (int i = 0; i < alternateMedicineType.length; i++) {
%>
        "<%= alternateMedicineType[i] %>"
<%
        if (i + 1 < alternateMedicineType.length) {
%>
            ,
<%
        }
    }
%>
    ];
             /* for image urls*/
             
             var diseaseName = "<%= session.getAttribute("diseaseName").toString() %>";
             
             
 
              oImg.setAttribute('src', imageUrls[i]);
              oImg.setAttribute('alt', 'Cinque Terre');
              oImg.setAttribute('class', 'img-thumbnail');
              oImg.setAttribute('width','250');
              oImg.setAttribute('height','150');
              
            /*    cell1.appendChild(a); 
               a.appendChild(oImg);
           */
          
          // 		row.appendChild(a);
        //   a.appendChild(oImg);
            
         //  cell1.appendChild(a);
             cell1.appendChild(oImg);
              /* cell1.innerHTML = "NEW CELL1";*/
              
              cell2.innerHTML = "<b>Disease Name </b>"+diseaseName+"<br><b>Alternate Medicine Type : </b>"+alternateMedicineType[i]+"<br>"+"<b>Disease Details : </b>"+diseaseDetails[i]+"<br><a href=\"${pageContext.request.contextPath}/DisplayMedicine?diseaseName="+diseaseName+"&alternateMedicineType="+alternateMedicineType[i]+"\">Know More</a>";//[0]; 
              //(bean.Disease)d.getDiseaseDetails().toString();//"NEW CELL2" ;
            //  table.appendChild(a);
              
        
         
          } 
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
