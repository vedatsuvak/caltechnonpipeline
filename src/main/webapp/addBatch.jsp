<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
boolean isLoggedIn = session.getAttribute("username") != null;
String username = (String) session.getAttribute("username");
RequestDispatcher rd = request.getRequestDispatcher("main.jsp");
rd.include(request, response);
// Only Admin
if (isLoggedIn && username.equalsIgnoreCase("admin")) {
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<br>
	<div>
		<h2 class="text-center text-white"><i>Adding Batch</i></h2>
	</div>
	<section class="intro">
		<div class="gradient-custom-2 h-100">
			<div class="mask d-flex align-items-center h-100">
				<div class="container">
		        	<div class="row justify-content-center">
		          		<div class="col-6">
		            		<div class="table-responsive">
			            		<form action = "addBatch">
			              			<table class="table table-dark table-bordered mb-0">
			                			<thead>
											<tr><td class = "right">Batch ID</td><td>Auto Increment<input type="hidden" name="bid" required></td></tr>
											<tr><td class = "right">Batch Name</td><td><input type="text" name="bname" pattern="^[A-Za-z0-9_-]{5,30}$" title="letters, numbers, underscores, and hyphens. Length between 5 and 30 characters." required></td></tr>
											<tr>
											    <td class="right">Instructor</td>
											    <td>
											        <select name="instructor" required>
											            <option value="VEDAT">VEDAT</option>
											            <option value="KARTHIK">KARTHIK</option>
											            <option value="KAMAL">KAMAL</option>
											            <option value="SURAJ">SURAJ</option>
											            <option value="ANITA">ANITA</option>
											            <option value="SWATI">SWATI</option>
											        </select>
											    </td>
											</tr>
											<tr><td class = "right">Start Time</td><td><input type="time" name="startTime" required></td></tr>
											<tr><td class = "right">Start Date</td><td><input type="date" name="startDate" required></td></tr>
											<tr><td colspan = "2" class="text-center"><input type="submit" value="Add"></td></tr>
			 							</thead>
			 						</table>
		 						</form>
		 					</div>
		 				</div>
					</div>
				</div>
			</div>
		</div>
	</section>		
</body>
</html>
<%
// Other Users Restricted
} else {
    response.sendRedirect("login.jsp");
}
%>