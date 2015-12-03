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
<title>Admin Header</title>
</head>
<body>
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
					size="2" color="#000000" >&nbsp;Welcome| <a
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
</body>
</html>