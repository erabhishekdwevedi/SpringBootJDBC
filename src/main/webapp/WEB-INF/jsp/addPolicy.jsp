<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Policy</title>
</head>
<jsp:include page="menu.jsp"/>
<body>
	<h3 style="color: red;">Add New Policy</h3>

	<div id="addPolicy">
		<form:form action="/addNewPolicy" method="post" modelAttribute="policy">
			<p>
				<label>Enter Policy Number</label>
				<form:input path="policyNumber" />
			</p>
			<p>
				<label>Enter Insured Person Name</label>
				<form:input path="insuredPerson" />
			</p>
			<input type="SUBMIT" value="Submit" />
		</form:form>
	</div>
</body>
</html>