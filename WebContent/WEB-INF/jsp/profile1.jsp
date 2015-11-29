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
      <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
   <!-- 
   <script>
	var list = ${list};
	$(document).ready(function() {
      
        $(list).each(function(i, person) {
           
        	alert(person.id);
        });
    });           
             
</script>
 -->
		<script>
		
		var list = ${list};
		
		alert(list);
		$(document).ready(function() {
		    $("#auto").autocomplete({
		        source: function(req, add) {
		            add($.map(list, function(el) {
		                return {
		                    label: el.username,
		                    zzz: el.id
		                };
		            }));
		        },
		        select: function(event, ui) {
		            alert(ui.item.zzz);
		        }
		    });
		});
		
		
		</script>
	
   
   
</head>
<body>
<h1>${list}</h1>
 <input id="auto" />
</body>
</html>