
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@include file = "include/header.jsp" %>
</head>
<body>

<h1>
	<label> My name</label>
	<input type="text" value =<c:out value = '${sessionScope.tusername}'/>>


</h1>

	<h1>System Admin</h1>
	
	<a href="<%=request.getContextPath()%>/viewUserAccount" >
		<button  >View All User Account</button>
	</a>
	
	
	<a href="<%=request.getContextPath()%>/newUserForm" >
		<button  >Add New User</button>
	</a>
	
	
	
	<br/>
	
	<a href="<%=request.getContextPath()%>/viewUserProfile" >
		<button  >View All User Profile</button>
	</a>
	
	<a href="<%=request.getContextPath()%>/newUserProfileForm" >
		<button  >New User Profile</button>
	</a>
	
	<br/>

	
	<button onclick="javascript:logout();" >Log Out</button>
	<a  href=<%session.invalidate();  %>"index.jsp"> <button > Log out </button></a> 

	
</body>
</html>