<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html lang="en">

<head>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Profile Page</title>
    <meta name="generator" content="Bootply" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
     <!--[if lt IE 9]>
<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
     <!-- Favicon Icon -->
    <link rel="icon" href="/assets/img/favicon.ico" />
    <title>SocialCommunity</title>
    <!-- BOOTSTRAP CORE CSS -->
    
     <link href='<c:url value="/assets/css/bootstrap.css"/>' rel="stylesheet">
    <link href='<c:url value="/assets/css/bootstrap.min.css"/>' rel="stylesheet">
    
    <!-- ION ICONS STYLES -->
    <link href='<c:url value="/assets/css/ionicons.css"/>' rel="stylesheet" />
     <!-- FONT AWESOME ICONS STYLES -->
    <!-- CUSTOM CSS -->
    <link href='<c:url value="/assets/css/style.css"/>' rel="stylesheet" />
    <link href='<c:url value="/assets/css/styles.css"/>' rel="stylesheet" />
    
     <!-- IE10 viewport hack  -->
    <script src="js/ie-10-view-port.js"></script>
    <link rel="stylesheet" href='<c:url value="/assets/css/bootstrapValidator.css"/>'/>
<script src='<c:url value="/assets/js/jquery-1.11.1.js"/>'></script>
    <!-- BOOTSTRAP SCRIPTS  -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>  
    <!-- SCROLLING SCRIPTS PLUGIN  -->
    <script src='<c:url value="/assets/js/jquery.easing.min.js"/>'></script>
    <!-- CUSTOM SCRIPTS   -->
   
    <script type="text/javascript" src='<c:url value="/assets/js/bootstrapValidator.js"/>'></script>
<!-- Latest compiled and minified CSS -->


<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <!-- HTML5 Shiv and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src='<c:url value="//ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"/>'></script>
    <script src='<c:url value="/assets/js/bootstrap.min.js"/>'></script>
    <script src='<c:url value="/assets/js/scripts.js"/>'></script>
      <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
   <script>
   
   var json= ${list};
	  

	  for(var i = 0; i < json.length; i++) {
		    var obj = json[i];

		    console.log(obj.id);
		    alert(obj.id);
		    alert("hi");
		}
   
			
  $(document).ready(function() {
	  
	  
	  $.ajax({
		  type: "post",
		  url: "http://localhost:9090/SocialCommunity/lendingPage/"+$("#username1")+"/list",
		  cache: true,    
		  data:'username=' + $("#username1").html() ,
		  success: function(response){
		  
			  var countryArray = response.split(':');

			  for (var i = 1; i < countryArray.length; i++) {
			 
			  
			    $("#postLoad").append("<div id="+i+	"class='panel-body'>").append("<div  id="+i+"><h4>"+countryArray[i]+"</h4>	</div>").append("<div class='clearfix'></div><form class='form-horizontal' role='form' id='commentForm'  modelAttribute='commentAttribute' method='POST' action=''>").
			    append("<div class='input-group'>").append(" <input type='text' class='form-control' placeholder='Add a comment..'>").append(" <div class='input-group-btn'>").append(" <button class='btn btn-default'>+1</button><button class='btn btn-default'><i class='glyphicon glyphicon-share'></i></button> </div>").append("</div></form></div>");        
			  }
		  
		  },
		  error: function(response){      
			alert(response);
		  }
		 });
	  
	$.ajax({
	  type: "post",
	  url: "http://localhost:9090/SocialCommunity/lendingPage/"+$("#username1")+"/show",
	  cache: true,    
	  data:'username=' + $("#username1").html() ,
	  success: function(response){
	  var countryArray = response.split(':');

	  for (var i = 0; i < countryArray.length; i++) {
	  
		  alert(countryArray[i]);
	    
	    $("#firstName").text(countryArray[0]);
	    $("#lastName").text(countryArray[1]);
	    $("#email").text(countryArray[2]);
	  }
	  
	  },
	  error: function(response){      
		alert(response);
	  }
	 });
		
  });
		 /* 
		 $.ajax({
		  type: "GET",
		  url: "http://localhost:9090/SocialCommunity/lendingPage/public/search",
		  success: function(response){
			console.log("response"+response);
			extGlobalVar=response;
		
			
		  },
		  error: function(response){      
				console.log("response"+response);
				}
		 });
			
		 */ 	  
</script>
		
                <script type="text/javascript">
                
               
function madeAjaxCall1(){
	
$(window).attr("location","http://localhost:9090/SocialCommunity/lendingPage/public/"+$("#auto").val()); 

}
</script>
<script type="text/javascript">
function madeAjaxCall()
{
	
$.ajax({
  type: "post",
  url: "http://localhost:9090/SocialCommunity/lendingPage/"+$("#username1")+"/post",
  cache: false,    
  data:'post_date='+ $("#post_date").val() ,
  success: function(response){
  alert(response);
  
  },
  error: function(response){      
   alert(response);
  }
});

}
</script>
   
</head>
<body>

    <div class="box" style="align:center">
    <div class="row row-offcanvas row-offcanvas-left">
                           
            <!-- main right col -->
            <div class="column col-sm-12 col-xs-11" id="main">
                
                <!-- top nav -->
              <div class="navbar navbar-blue navbar-static-top" style="background: #48A5FF">  
                    <div class="navbar-header">
                      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle</span>
                        <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
                      </button>
                            </div>
                  <nav class="collapse navbar-collapse" role="navigation">
             
                    
                  </nav>
                </div>
                <!--  search result -->
                <div id = "result" height = "30px" width = "100%"></div>
                                    
                <!-- /top nav -->
            
                <div class="padding" style=" left: 50%;">
                    <div class="full col-sm-9">
                      
                        <!-- content -->                      
                      <div class="row">
                          
                         <!-- main col left --> 
                         <div class="col-sm-12">
                              <div class="panel panel-default">
                                <div class="panel-thumbnail"><!-- <img src="/assets/example/bg_5.jpg" class="img-responsive">--></div>
                                <div class="panel-body">
                                  <p id="username1" class="lead">${username}</p>
                                  <p>13 Posts</p>                                
                                    <p>
                                        <ul>
                                            <li id="firstName"></li>
                                            <li id="lastName"></li>
                                            <li id="email"></li>
                                            <li id="dob">DOB:</li>
                                            
                                        </ul>
                                   
                                </div>
                                <div id="somediv"></div>
                              </div>

                           
                           
                          </div>
                          
                         
                               <div class="panel panel-default" id="postLoad">
                         </div><!--/row-->
                      
                      
                        <div class="row" id="footer">    
                          <div class="col-sm-6">
                           
                        
                      
                    </div><!-- /col-9 -->
                </div><!-- /padding -->
                
            </div>
            <!-- /main -->
          
        </div>
    </div>
</div>


<!--post modal-->
<div id="postModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog">
  <div class="modal-content">
      <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
Update Status
      </div>
      <div class="modal-body">
       <c:url var="share" value='/lendingPage/+${username}/+${share}' />
          <form:form class="form center-block" role="form" id='shareForm'  modelAttribute='shareAttribute' method='POST' action='${share}'>                          
            <div class="form-group">
              <textarea class="form-control input-lg" placeholder="What do you want to share?"></textarea>
            </div>
          </form:form>
      </div>
      <div class="modal-footer">
          <div>
          <button class="btn btn-primary btn-sm" data-dismiss="modal" aria-hidden="true">Post</button>
            <ul class="pull-left list-inline"><li><a href=""><i class="glyphicon glyphicon-upload"></i></a></li><li><a href=""><i class="glyphicon glyphicon-camera"></i></a></li><li><a href=""><i class="glyphicon glyphicon-map-marker"></i></a></li></ul>
 </div>
      </div>
  </div>
  </div>
</div>  

</body>
</html>