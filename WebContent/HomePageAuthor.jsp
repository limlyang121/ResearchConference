
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@include file = "include/header.jsp" %>
<title>Insert title here</title>
	<c:if test = "${sessionScope.message != null}">
		<script>
			alert("<c:out value = '${message}'/> ");
		</script>
    <c:remove var="error" />
        
	</c:if>
</head>
<body>
	<h1>Author</h1>

	

	

    <a  href="SubmissionPaper?username=<c:out value = '${sessionScope.username}'/>"> <button > Create Submission </button></a> 
    <a  href="ShowMyPapers?username=<c:out value = '${sessionScope.username}'/> "> <button > View My Papers </button></a> 

	
</body>
</html>