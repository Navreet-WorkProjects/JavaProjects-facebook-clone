<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html lang="en">

<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
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
   
</head>
<body>
   <div class="wrapper">
    <div class="box">
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
                      <a href="/" class="navbar-brand logo">b</a>
                  </div>
                  <nav class="collapse navbar-collapse" role="navigation">
                 <input type="text"  id="w-input-search" value="">
	<span>
	  <button id="button-id" type="button" onclick="madeAjaxCall2()" >Search</button>
	</span>
                    
                  </nav>
                </div>
                
                 <script>
  $(document).ready(function() {

	$('#button-id1').autocomplete({
		serviceUrl: '${pageContext.request.contextPath}/getTags',
		paramName: "tagName",
		delimiter: ",",
	   transformResult: function(response) {
		    	
		return {      	
		  //must convert json to javascript object before process
		  suggestions: $.map($.parseJSON(response), function(item) {
		            	
		      return { value: item.tagName, data: item.id };
		   })
		            
		 };
		        
            }
		    
	 });
				
  });
  </script>

                <script type="text/javascript">
                
               
function madeAjaxCall2(){
 alert($("#username1").html());
	
	$.ajax({
  type: "post",
  url: "http://localhost:9090/SocialCommunity/lendingPage/arpithparikh/show",
  cache: true,    
  data:'username=' + $("#username1").html() ,
  success: function(response){
  alert(response);
  
  },
  error: function(response){      
	alert(response);
  }
 });
}
</script>
		
                <script type="text/javascript">
                
               
function madeAjaxCall1(){
 alert($("#username1").html());
	
 var table = $('<table/>').appendTo($('#somediv'));
 $.getJSON('http://localhost:9090/SocialCommunity/lendingPage/arpithparikh/list', function() {
	 alert("fdfd");
 
 });
}
</script>
		
	
	
                <script type="text/javascript">
                
               
function madeAjaxCall(){
	$.ajax({
  type: "post",
  url: "http://localhost:9090/SocialCommunity/lendingPage/arpithparikh/post",
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
                   
                <!-- /top nav -->
              
                <div class="padding">
                    <div class="full col-sm-9">
                      
                        <!-- content -->                      
                      <div class="row">
                          
                         <!-- main col left --> 
                         <div class="col-sm-12">
                           
                              <div class="panel panel-default">
                                <div class="panel-thumbnail"><!-- <img src="/assets/example/bg_5.jpg" class="img-responsive">--></div>
                                <div class="panel-body">
                                  <p id="username1" class="lead">${username}</p>
                                  <p>45 Followers, 13 Posts</p>
                                  
                                  <p>
                                    <img src="https://lh3.googleusercontent.com/uFp_tsTJboUY7kue5XAsGA=s28" width="28px" height="28px">
                                  </p>
                                    
                                    <p>
                                        <ul>
                                            <li id="gender">Gender:</li>
                                            <li id="occupation">Occupation:</li>
                                            <li id="city">City</li>
                                            <li id="dob">DOB:</li>
                                            
                                        </ul>
                                   
                                </div>
                                <div id="somediv"></div>
                              </div>

                           
                             
                           
                              <div class="well">
                              
                                   <form class="form-horizontal" role="form" id='postForm'  >
                                    <h4>What's New</h4>
                                     <div class="form-group" style="padding:14px;">
                                      <textarea class="form-control" id="post_date" name="post_date" placeholder="Update your status"></textarea>
                                    </div>
                                    <button onclick="madeAjaxCall()" class="btn btn-primary pull-right" type="button">Post</button><ul class="list-inline"><li><a href=""><i class="glyphicon glyphicon-upload"></i></a></li><li><a href=""><i class="glyphicon glyphicon-camera"></i></a></li><li><a href=""><i class="glyphicon glyphicon-map-marker"></i></a></li></ul>
                                  </form>
                              </div>
                           
                        
                             
                           
                          </div>
                          
                         
                               <div class="panel panel-default">
                                 <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Stackoverflow</h4></div>
                                  <div class="panel-body">
                                    <img src="//placehold.it/150x150" class="img-circle pull-right"> <a href="#">Keyword: Bootstrap</a>
                                    <div class="clearfix"></div>
                                    <hr>
                                    
                                    <p>If you're looking for help with Bootstrap code, the <code>twitter-bootstrap</code> tag at <a href="http://stackoverflow.com/questions/tagged/twitter-bootstrap">Stackoverflow</a> is a good place to find answers.</p>
                                    
                                    <hr>
                                    <c:url var="comment" value='/lendingPage/+${username}/+${comment}' />
                                    <form:form class="form-horizontal" role="form" id='commentForm'  modelAttribute='commentAttribute' method='POST' action='${comment}'>
                                    <div class="input-group">
                                      <div class="input-group-btn">
                                      <button class="btn btn-default">+1</button><button class="btn btn-default"><i class="glyphicon glyphicon-share"></i></button>
                                      </div>
                                      <input type="text" class="form-control" placeholder="Add a comment..">
                                    </div>
                                    </form:form>
                                    
                                  </div>
                               </div>

                              
                               <div class="panel panel-default">
                                <div class="panel-thumbnail"><img src="/assets/example/bg_4.jpg" class="img-responsive"></div>
                                <div class="panel-body">
                                  <p class="lead">Social Good</p>
                                  <p>1,200 Followers, 83 Posts</p>
                                  
                                  <p>
                                    <img src="https://lh6.googleusercontent.com/-5cTTMHjjnzs/AAAAAAAAAAI/AAAAAAAAAFk/vgza68M4p2s/s28-c-k-no/photo.jpg" width="28px" height="28px">
                                    <img src="https://lh4.googleusercontent.com/-6aFMDiaLg5M/AAAAAAAAAAI/AAAAAAAABdM/XjnG8z60Ug0/s28-c-k-no/photo.jpg" width="28px" height="28px">
                                    <img src="https://lh4.googleusercontent.com/-9Yw2jNffJlE/AAAAAAAAAAI/AAAAAAAAAAA/u3WcFXvK-g8/s28-c-k-no/photo.jpg" width="28px" height="28px">
                                  </p>
                                </div>
                              </div>
                            
                          </div>
                       </div><!--/row-->
                      
                        <div class="row">
                          <div class="col-sm-6">
                            <a href="#">Twitter</a> <small class="text-muted">|</small> <a href="#">Facebook</a> <small class="text-muted">|</small> <a href="#">Google+</a>
                          </div>
                        </div>
                      
                        <div class="row" id="footer">    
                          <div class="col-sm-6">
                            
                          </div>
                          <div class="col-sm-6">
                            <p>
                            <a href="#" class="pull-right">©Copyright 2013</a>
                            </p>
                          </div>
                        </div>
                     
                        
                      
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
              <textarea class="form-control input-lg" autofocus="" placeholder="What do you want to share?"></textarea>
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