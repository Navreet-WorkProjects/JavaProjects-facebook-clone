<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html lang="en">

<head>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
     <!-- Favicon Icon -->
    <link rel="icon" href="/assets/img/favicon.ico" />
    <title>SocialCommunity</title>
    <!-- BOOTSTRAP CORE CSS -->
    
     <link href='<c:url value="/assets/css/bootstrap.css"/>' rel="stylesheet">
    
    <!-- ION ICONS STYLES -->
    <link href='<c:url value="/assets/css/ionicons.css"/>' rel="stylesheet" />
     <!-- FONT AWESOME ICONS STYLES -->
		    <!-- CUSTOM CSS -->
    <link href='<c:url value="/assets/css/style.css"/>' rel="stylesheet" />
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
</head>
<body>
    <!-- HEADER SECTION START-->
   <header id="header">
        <div class="container" >
                <div class="row"  >
                     <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 logo-wrapper">
                        <!-- <img src="assets/img/logo.jpg" alt="" />-->
                     </div>
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-right" >
                          <div class="menu-links scroll-me">
                              <a href="#header"> <i class="ion-ios-home-outline"></i> </a>
                          <a href="#clients"> <i class="ion-ios-grid-view-outline"></i> </a>
                          <a href="#contact"> <i class="ion-ios-chatboxes-outline"></i> </a>
                          </div>                    
                </div>
                      
                </div>
              
                
            </div>
   </header>
    <!-- HEADER SECTION END-->
    <!--HOME SECTION START  -->
    <div id="home">
        <div class="overlay">
            <div class="container">
                <div class="row scroll-me" >
                      <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                          <h1 >SocialCommunity</h1>
                    <h4>
                        Connecting the World with the Same Interest.

                    </h4>
                   
    <button  id="login"class="btn btn-custom btn-two" data-toggle="modal" data-target="#loginModal">Login</button>
	<button  class="btn btn-custom btn-two" data-toggle="modal" data-target="#RegistrationModal">Registration</button>

                    
                </div>
                </div>
              
                
            </div>
        </div>

		
		<div class="modal fade" id="RegistrationModal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title">Registration</h5>
            </div>

            <div class="modal-body">
		<c:url var="savePerson" value="/lendingPage/add" />
		<form:form class='form-horizontal' id='basicBootstrapForm'  modelAttribute='personAttribute' method='POST' action='${savePerson}'>
		
    <div class="form-group">
       <label class="col-xs-3 control-label">Full name</label>
        <div class="col-xs-4">
            <input type="text" class="form-control" name="firstName" placeholder="First name" />
        </div>
        <div class="col-xs-4">
            <input type="text" class="form-control" name="lastName" placeholder="Last name" />
        </div>
    </div>

    <div class="form-group">
        <label class="col-xs-3 control-label">Username</label>
        <div class="col-xs-5">
            <input type="text" class="form-control" name="username" />
        </div>
    </div>

    <div class="form-group">
        <label class="col-xs-3 control-label">Email address</label>
        <div class="col-xs-5">
            <input type="text" class="form-control" name="email" />
        </div>
    </div>

    <div class="form-group">
        <label class="col-xs-3 control-label">Password</label>
        <div class="col-xs-5">
            <input type="password" class="form-control" name="password" />
        </div>
    </div>

	  <div class="form-group">
        <label class="col-xs-3 control-label">DOB</label>
        <div class="col-xs-5">
            <input type="text" class="form-control" name="DOB" />
        </div>
    </div>
	
    <div class="form-group">
        <label class="col-xs-3 control-label">Gender</label>
        <div class="col-xs-6">
            <div class="radio">
                <label>
                    <input type="radio" name="gender" value="male" /> Male
                </label>
            </div>
            <div class="radio">
                <label>
                    <input type="radio" name="gender" value="female" /> Female
                </label>
            </div>
            <div class="radio">
                <label>
                    <input type="radio" name="gender" value="other" /> Other
                </label>
            </div>
        </div>
    </div>

    <div class="form-group">
        <label class="col-xs-3 control-label" id="captchaOperation"></label>
        <div class="col-xs-4">
            <input type="text" class="form-control" name="captcha" />
        </div>
    </div>

    <div class="form-group">
        <div class="col-xs-6 col-xs-offset-3">
            <div class="checkbox">
                <label>
                    <input type="checkbox" name="agree" value="agree" /> Agree with the terms and conditions
                </label>
            </div>
        </div>
    </div>

    <div class="form-group">
        <div class="col-xs-9 col-xs-offset-3">
            <button id="register" type="submit" class="btn btn-primary" name="signup" value="Sign up">Submit</button>
        </div>
    </div>
</form:form>
		</div>
        </div>
    </div>
</div>
		
<script>
// Check the captcha
function checkCaptcha(value, validator, $field) {
    var items = $('#captchaOperation').html().split(' '),
        sum   = parseInt(items[0]) + parseInt(items[2]);
    return value == sum;
}

	
    function randomNumber(min, max) {
        return Math.floor(Math.random() * (max - min + 1) + min);
    }
    $('#captchaOperation').html([randomNumber(1, 100), '+', randomNumber(1, 200), '='].join(' '));


	
	$("#register").click(function(){
	
	
    $('#basicBootstrapForm').bootstrapValidator({
        message: 'This value is not valid',
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            firstName: {
                row: '.col-xs-4',
                validators: {
                    notEmpty: {
                        message: 'The first name is required'
                    }
                }
            },
            lastName: {
                row: '.col-xs-4',
                validators: {
                    notEmpty: {
                        message: 'The last name is required'
                    }
                }
            },
            username: {
                validators: {
                    notEmpty: {
                        message: 'The username is required'
                    },
                    stringLength: {
                        min: 6,
                        max: 30,
                        message: 'The username must be more than 6 and less than 30 characters long'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_\.]+$/,
                        message: 'The username can only consist of alphabetical, number, dot and underscore'
                    }
                }
            },
            email: {
                validators: {
                    notEmpty: {
                        message: 'The email address is required'
                    },
                    emailAddress: {
                        message: 'The input is not a valid email address'
                    }
                }
            },
            password: {
                validators: {
                    notEmpty: {
                        message: 'The password is required'
                    },
                    different: {
                        field: 'username',
                        message: 'The password cannot be the same as username'
                    }
                }
            },
            gender: {
                validators: {
                    notEmpty: {
                        message: 'The gender is required'
                    }
                }
            },
            captcha: {
                validators: {
                    callback: {
                        message: 'Wrong answer',
                        callback: function(value, validator, $field) {
                            var items = $('#captchaOperation').html().split(' '), sum = parseInt(items[0]) + parseInt(items[2]);
                            return value == sum;
                        }
                    }
                }
            },
            agree: {
                validators: {
                    notEmpty: {
                        message: 'You must agree with the terms and conditions'
                    }
                }
            }
        }
    });
});
</script>

<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="Login" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title">Login</h5>
            </div>

            <div class="modal-body">
                <!-- The form is placed inside the body of modal -->
                <c:url var="loginPerson" value="/lendingPage/login" />
		<form:form class='form-horizontal' id='loginForm'  modelAttribute='personAttribute' method='POST' action='${loginPerson}'>
                 
                    <div class="form-group">
                        <label class="col-xs-3 control-label">Username</label>
                        <div class="col-xs-5">
                            <input type="text" class="form-control" name="username" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-xs-3 control-label">Password</label>
                        <div class="col-xs-5">
                            <input type="password" class="form-control" name="password" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-xs-5 col-xs-offset-3">
                            <button type="submit" id="loginValid" class="btn btn-primary">Login</button>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
		
		<script>
		
	$("#loginValid").click(function(){	
		
$(document).ready(function() {
    $('#loginForm').bootstrapValidator({
        message: 'This value is not valid',
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            username: {
                validators: {
                    notEmpty: {
                        message: 'The username is required'
                    },
                    stringLength: {
                        min: 6,
                        max: 30,
                        message: 'The username must be more than 6 and less than 30 characters long'
                    },
                    regexp: {
                        regexp: /^[a-zA-Z0-9_]+$/,
                        message: 'The username can only consist of alphabetical, number and underscore'
                    }
                }
            },
            password: {
                validators: {
                    notEmpty: {
                        message: 'The password is required'
                    }
                }
            }
        }
    });
});
});
		</script>
    </div>
    <!--HOME SECTION END  -->
     <!-- ABOUT SECTION START-->
  
    <!-- ABOUT SECTION END-->
     <!-- CLIENTS SECTION START-->
    <section id="clients">
        <div class="overlay">       
        <div class="container">
            <div class="row text-center">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">

                </div>
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12  client-cover" >
                     <div id="carousel-example" class="carousel slide" data-ride="carousel">

                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="testimonial-section">
                           I was so much depressed before landing to this site.Here I got all Desi girls. 
                        </div>
                        <div class="testimonial-section-name">
                            <img src='<c:url value="/assets/img/client1.jpg"/>' alt="" class="img-circle" />
                            -  Appu(GW President)
                        </div>
                            
                        </div>
                        
                        <div class="item">
                           <div class="testimonial-section">
                             Its better than other dating apps.I got more connections.
                        </div>
                        <div class="testimonial-section-name">
                            <img src='<c:url value="/assets/img/client2.jpg"/>' alt="" class="img-circle" />
                            -  Arpit Parikh
                        </div>
                            
                        </div>
                        <div class="item">
                          <div class="testimonial-section">
                             Mind Blowing ! Never expected the features.I made lots of friends here!
							 
                        </div>
                        <div class="testimonial-section-name">
                            <img src='<c:url value="/assets/img/client3.jpg"/>' alt="" class="img-circle" />
                            -  Xiaobei Yu.
                        </div>
                            
                        </div>
                         <!--INDICATORS-->
                    <ol class="carousel-indicators carousel-indicators-set">
                        <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example" data-slide-to="1"></li>
                        <li data-target="#carousel-example" data-slide-to="2"></li>
                    </ol>

                    </div>
                   
                </div>
                </div>
            </div>
           
        </div>
             </div>
    </section>
     <!-- CLIENTS SECTION END-->
    <!-- FEATURES SECTION START-->
    <section id="features">
        <div class="container">
            
            <div class="row text-center">
                 <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 ">
                     <div class="icon-wrapper">

                     
                     <i class="ion-chatboxes"></i>
                          </div>
                    <h4>Stable relaese  </h4>
                                      Consectetur adipiscing elit felis dolor .
                    
                        
            </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 scroll-me">
                       <h2 class="head-line">Great Resource Found</h2>
                    <p>
                        Integer vehicula efficitur dictum. Integer pharetra venenatis enim non porta.

                    </p>
                     <a href="#header" class="btn btn-custom btn-three" >Nothing To Hide Here</a>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                     <div class="icon-wrapper">
                    <i class="ion-email-unread"></i>
                         </div>
                    <h4>Stable relaese  </h4>
                                      Consectetur adipiscing elit felis dolor .
                        
            </div>
                
        </div>
</div>

    </section>
    <!-- FEATURES SECTION END-->     
     <!-- SUBSCRIBE SECTION START-->
     <section id="email-subscribe">
         <div class="container">
<div class="row text-center">
    <div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-6 col-sm-offset-3 col-xs-12">
       <form action="#" method="post" id="postcontent"> 
	    				<input type="email" name="email" class="form-control" placeholder="Enter Your E-mail Address..." required />
           <button type="submit" class="btn btn-subscribe"  >Notify Me for Updates !</button>
					</form>
    </div>
</div>
         </div>
     </section>
     <!-- SUBSCRIBE SECTION END-->
     <!-- CONTACT SECTION START-->
    <section id="contact">
        <div class="overlay">       
        <div class="container">
            <div class="row text-center">
                 <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12  contact-cover" >
                     <h2>Physical Location</h2>
                     <h3>The George Washington Unviersity</h3>
                     <h3>Washington DC,United States </h3>
                     <div class="space"> </div>
                      
                    </div>
                </div>
               
               
            </div>
           
        </div>
             </div>
    </section>
     <!-- CONATCT SECTION END-->
    <!-- FOOTER SECTION START-->
    <footer>
        <div class="container">
<div class="row text-center">
    <div class="col-lg-12 col-md-12 col-sm-12">
                             &copy; 2015 socialcommunity.com | by <a href="#" target="_blank"> DesignByChamps </a> 
                         </div>
    </div>
            </div>
    </footer>
    <!-- FOOTER SECTION END-->

    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY  SCRIPTS -->
   
</body>
</html>
