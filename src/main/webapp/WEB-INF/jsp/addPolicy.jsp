<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Policy</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
 <style><%@include file="/WEB-INF/css/style.css"%></style>
 
</head>

<body>
	<div class="container-fluid">
	<jsp:include page="policyIndexInquiry.jsp" />
		<div class="row">
			<div class="col-md-12">
				<h3>Add Policy</h3>
			</div>
		</div>

		<div id="addPolicy" class="row section">
			<div class="col-md-6">

				<form:form action="/addNewPolicy" method="post"
					modelAttribute="policy">


					<table class="table table-borderless">
							<tr>
								<td><label>Enter Effective Date</label></td>
								<td><form:input path="effectiveDate" /></td>
							</tr>
							<tr>
								<td><label>Enter Policy Number</label></td>
								<td><form:input path="policyNumber" /></td>
							</tr>
							<tr>
								<td><label>Enter Coverage Amount</label></td>
								<td><form:input path="coverageAmount" /></td>
							</tr>							
							<tr>
								<td><label>Enter Insured Person Name</label></td>
								<td><form:input path="insuredPerson" /></td>
							</tr>
							<tr>
								<td></td>
								<td><input class="btn btn-primary" type="SUBMIT" value="Submit" /></td>
								
							</tr>

						</tbody>
					</table>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>