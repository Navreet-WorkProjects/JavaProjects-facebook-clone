<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.Date"%>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> --%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit User Details</title>
</head>
<body>
	<table width="100%" height="10%" border="0" align="center"
		style="margin-bottom: 0px; padding-bottom: 0px; bottom: 0px;">
		<tr style="margin-bottom: 0px; padding-bottom: 0px; bottom: 0px;">
			<td width="100%"
				style="margin-bottom: 0px; padding-bottom: 0px; bottom: 0px;">
				<c:url var="logout" value="/lendingPage/logout" />
<c:url var="admin" value="/admin" />
<table width="90%" align="center" >
	<tr>
		<td align="right"
					style="font-family: 'Lucida Sans'; font-size: x-large; font-weight: bold; font-variant: small-caps; text-transform: none; color: #e6e6fa; white-space: nowrap; text-align: left">
					<b>
							<font size="5" color="#808080" face="arial">Social Community</font></b><br>
								
				</td>
				<td align="left"
					style="font-family: 'Lucida Sans'; font-size: x-large; font-weight: bold; font-variant: small-caps; text-transform: none; color: #e6e6fa; white-space: nowrap; text-align: right">
					<font color="#808080" face="arial" size="6"><b>&nbsp;GWU</b></font>
				</td>
			</tr>
			<tr>			
				<td colspan="2" align="right"
					style="font-family: 'Calibri'; font-size: x-large;  font-variant: small-caps; text-transform: none; color: #e6e6fa; white-space: nowrap; text-align: right"><font
					size="2" color="#000000" >&nbsp;Welcome | <a
						class="logout" href= '${logout}'>Logout</a></font></td>
			</tr>
	</table>
	<br>
	<table width="90.5%" align="center">
			<tr bgcolor="#0000A0">
				<td>
					<ul class="topnav">
						<li><a href= '${admin}' style="text-decoration: none">
									<b><font color="#FFFFFF">ADMIN</font> </b>
						</a></li>						
						
						</ul>
										
				</td>
			</tr>
		</table>
		</tr>

	</table>
	<c:url var="updatePerson" value="/editUserDetails/updatePerson" />
	<form:form id='editUserForm' modelAttribute='updatePerson' method='GET'
		action='${updatePerson}'>

		<table height="80%" cellPadding="0px" border="0" align="center"
			class="whiteBoxHome">
			<tr style="margin-top: 0px; padding-top: 0px; top: 0px;">
				<td valign="top" height="100%" align="center"
					style="margin-top: 0px; padding-top: 0px; top: 0px;">
					<div
						style="background: #F5F1F1; background-color: #F5F1F1; height: 400x; width: 1200px; overflow-x: hidden; margin-top: 0px; padding-top: 0px; ' overflow-y: hidden; padding-bottom: 10px;">
						<h1>${message}</h1>
						<table cellspacing="7" width="100%" 
							style="margin-top: 2px; padding-top: 2px; background: #F5F1F1; background-color: #F5F1F1; border-spacing: 7px; border-collapse: separate;">
							<tr class="whiteBoxHm"
								style="padding-top: 2px; padding-left: 2px; padding-right: 2px; padding-bottom: 2px; border-spacing: 20px">

								<td valign="middle" width="100%"><p class="heading">
								<c:if test="${message == NULL }">
										<b>Search Results:</b> </c:if>
									</p> <font color="#000000" face="Arial" size="2%"><br>
										<!-- <div class="scrollBarConfrm1" id=resultTable width="100%"> -->
										<br>
										<br>
										<br>
										<table width="50%" align="center" border="1">
										<c:if test="${message == NULL }">
											<tr>
												<td><b>User-Name</b></td>
												<td><b>DOB</b></td>
												<td><b>Current Status</b></td>
												<td><b>Update Status</b></td>
											</tr>
											<tr>
												<td>${username}</td>
												<td>${DOB}</td>
												<td>${status}</td>
												<td><form:select path="updateStatus">
														<form:option value="NONE"> --SELECT--</form:option>
														<form:options items="${statusList}"></form:options>
													</form:select> </td>
											</tr>
											</c:if>
										</table>
										<br>
										<br>
										<br>
										<c:if test="${message == NULL }">
										<div align="right"><button id="Submit"  name="Submit">Submit</button></div> </c:if><!-- </div> -->
								</font><br></td>
							</tr>

						</table>
					</div>
				</td>
			</tr>
		</table>
	</form:form>
	<br>
	<table align="center" width="100%" height="10%" cellPadding="0"
		cellspacing="0"
		style="background: #F5F1F1; background-color: #F5F1F1; margin: 0; top: 0">
		<tr style="font-size: 11px;" valign="bottom" align="center">
			<td valign="middle" align="center">&nbsp;&nbsp;&nbsp;&copy;2015
				| Social Community All Rights Reserved</td>
		</tr>
	</table>

</body>
</html>
