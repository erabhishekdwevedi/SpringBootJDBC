<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="false"%>
<html>
<head>
<title>Show Policies</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
<div class="container-fluid">
	<jsp:include page="menu.jsp" />

	<div class="row">
		<div class="col-md-12">
			<h3>Policy List</h3>
		</div>
	</div>

	<div class="row section">
		<div class="col-md-6">

			<table class="table table-hover">
				<thead>
					<tr>	
						<th>Effective Date</th>				
						<th>Policy Number</th>
						<th>Coverage Amount</th>				
						<th>Insured Person Name</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="listValue" items="${policies}">

						<tr class="tr_policyrow">
							<td >${listValue.effectiveDate}</td>
							<td >${listValue.policyNumber}</td>							
							<td>${listValue.coverageAmount}</td>							
							<td>${listValue.insuredPerson}</td>
							
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>
	</div>

</div>
</body>
</html>
