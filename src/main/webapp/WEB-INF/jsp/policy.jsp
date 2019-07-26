<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Policy Finder | Add Policy</title>
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
	<jsp:include page="nav.jsp" />
		<div class="row">
			<div class="col-md-12">
				<h3>Policy Details : <%= request.getParameter("id") %></h3>
			</div>
		</div>
		
		<div class="row">
			<div class="col-md-6">
					<table class="table table-borderless">
					<tbody>
							<tr>
								<td><label>Effective Date</label></td>
								<td><label id="lbl_effectiveDate"/>${policy.effectiveDate} </label></td>
							</tr>
							<tr>
								<td><label>Policy Number</label></td>
								<td><label id="lbl_policyNumber"  />${policy.policyNumber}</label></td>
							</tr>
							<tr>
								<td><label>Coverage Amount</label></td>
								<td><label id="lbl_coverageAmount"/>${policy.coverageAmount}</label></td>
							</tr>							
							<tr>
								<td><label>Insured Person Name</label></td>
								<td><label id="lbl_insuredPerson" />${policy.insuredPerson}</label></td>
							</tr>
						</tbody>
					</table>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<button id="btn_showdetails" class="btn btn-primary"><a class="btn-link" href="/"> Home</a></button>
				<button id="btn_add" class="btn btn-primary"><a class="btn-link" href="/addNewPolicy">Add Policy</a></button>
			</div>
		</div>		
	</div>
</body>
</html>