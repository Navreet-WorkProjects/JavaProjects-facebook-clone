<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.Date" %>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> --%>   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="assets/css/styleNav.css" />
<title>Admin</title>
</head>

<body style="background: #F5F1F1;background-color: #F5F1F1;">
	<table width="100%" height="10%" border="0" align="center" style="margin-bottom:0px;padding-bottom:0px;bottom: 0px;">
    	<tr style="margin-bottom:0px;padding-bottom:0px;bottom: 0px;">
        	<td width="100%" style="margin-bottom:0px;padding-bottom:0px;bottom: 0px;">
        	<jsp:include page="header.jsp" />
	    </tr>
	    
	</table>
	<c:url var="searchPerson" value="/admin/editUserDetails" />
		<form:form id='adminForm'  modelAttribute='searhPerson' method='GET' action='${searchPerson}'>
		
	<table height="80%" cellPadding="0px" border="0" align="center" class="whiteBoxHome">
		<tr style="margin-top:0px;padding-top:0px;top: 0px;">			
			<td valign="top" height="100%" align="center" style="margin-top:0px;padding-top:0px;top: 0px;">
				<div  style="background: #F5F1F1;background-color: #F5F1F1;height:400x; width:1200px; overflow-x:hidden;margin-top:0px;padding-top:0px; 'overflow-y: hidden;padding-bottom:10px;">
					<table cellspacing="7" width="100%" style="margin-top:2px;padding-top:2px;background: #F5F1F1;background-color: #F5F1F1;border-spacing: 7px;border-collapse:separate;">
			<tr class="whiteBoxHm" style="padding-top:2px;padding-left:2px;padding-right:2px;padding-bottom: 2px;border-spacing: 20px">
				<td valign="top" width="50%" style="position: relative;z-index: 0;"><img src="assets/img/admin.jpg"
					 width="100%"></td>
				<td valign="middle" colspan="2" width="50%"><p class="heading">
						<b>Details</b>
					</p> <font color="#000000" face="Arial" size="2%"><br>
						<!-- <div class="scrollBarConfrm1" id=resultTable width="100%"> -->
						 <table width="70%" align="center">
								<tr>
								<td>No. of users:</td><td>${numberOfUsers}</td></tr>
								<tr><td>&nbsp;</td></tr>
								<tr>								
								<td><input name="searchString" type="text" placeholder="Enter User Name"></input></td>
								<td>
								<button id="Search" name="Search">Search</button>
								</td></tr>	
																		
							</table> 
						<!-- </div> -->
				</font><br>
					</td>
			</tr>
			
		</table>
				</div>
			</td>
	    </tr>
	</table>
	</form:form>
	<br>
	<table align="center" width="100%" height="10%" cellPadding="0" cellspacing="0" style="background: #F5F1F1;background-color: #F5F1F1;margin: 0;top: 0" >
	<tr style="font-size: 11px;" valign="bottom" align="center">
		<td valign="middle" align="center">&nbsp;&nbsp;&nbsp;&copy;2015 | Social Community All Rights Reserved
								</td>
			</tr>
	</table>

</body>
</html>