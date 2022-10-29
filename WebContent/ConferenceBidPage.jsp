<!DOCTYPE html>
<html>
<head>
	<%@include file= "include/header.jsp" %>

</head>
<body>
	<%@include file = "include/navbar.jsp" %>
	
	<h1>Current Bid from reviewer</h1>
	
	<table>
		<thead>
			<tr>
				<th>BidID</th>
				<th>PaperName</th>
				<th>ReviewerName</th>
				<th>AuthorName </th>
				<th>CoAuthor </th>
				<th> </th>
				

			</tr>

		</thead>
		<tbody>
			<c:forEach var ="bidInfo" items = "${bidInfo}">
			<c:if test= "${bidInfo.allocateStatus != 'completed' }"> 
				<tr>
					
					<td>
						<c:out value="${bidInfo.bid_id}" />
					</td>
					<td>
						<c:out value="${bidInfo.paper.papername}" />
					</td>
					
					<td>
						<c:out value="${bidInfo.reviewer.fullname}" />
					</td>
					
					<td>
						<c:out value="${bidInfo.paper.author}" />
					</td>
					<td > 	
						<c:if test = "${bidInfo.paper.coauthor != null }"> 
							<c:out value="${bidInfo.paper.coauthor}" />
		
						</c:if>
						<c:if test = "${bidInfo.paper.coauthor == null }"> 
							Null
						</c:if>
						
					</td>
					
					<td>
					<c:if test = "${bidInfo.allocateStatus == 'unallocated'}">
						<a href="allocatePaper?bidID=<c:out value = '${bidInfo.bid_id}'  />&cprofilename=<c:out value = '${user.profileName }'/> " >
						Allocate
						</a>
						<a href="editUserAccountForm?cusername=<c:out value = '${ user.username}'  />&cprofilename=<c:out value = '${user.profileName }'/> " >
						Reject
						</a>
					 </c:if>
					 
					 <c:if test = "${bidInfo.allocateStatus == 'allocated'}">
						<a href="unallocatePaper?bidID=<c:out value = '${bidInfo.bid_id}'  />&cprofilename=<c:out value = '${user.profileName }'/> " >
						UnAllocate
						</a>
					 </c:if>
					
						
					</td>
	
				</tr>
			</c:if>
			</c:forEach>
		</tbody>
	</table>
	
</body>
</html>