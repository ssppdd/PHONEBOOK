<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="css/style.css"/>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>


<script type="text/javascript" src="js/form-validation.js"></script>	
<title>PHONE BOOK</title>
</head>
<body>
<div class="container">
	<h2>Save Contact</h2>

	<p>
		<font color='green'>${succMsg}</font>
	</p>
	<p>
		<font color='red'>${errMsg}</font>
	</p>

	<form:form name="registration" action="saveContact" modelAttribute="contact" method="POST">
		
				<form:hidden path="contactId"/>
				<div class="form-group">
				<label for="formGroupExampleInput">Contact Name* </label>
				<form:input name="formGroupExampleInput" path="contactName" class="form-control" id="formGroupExampleInput" placeholder="Enter Name" />
				</div>
			
			   <div class="form-group">
				<label for="formGroupExampleInput">Contact Email* </label>
				<form:input type="email" name="formGroupExampleInput2" path="contactEmail" class="form-control" id="formGroupExampleInput2" placeholder="Enter Email" />
				</div>
			
			
			<div class="form-group">
				<label for="formGroupExampleInput">Contact Number* </label>
				<form:input name="formGroupExampleInput3" path="contactNumber" class="form-control" id="formGroupExampleInput3" placeholder="Enter Number" />
				</div>
			
			
				<td><input class="btn btn-secondary" type="reset" value="Reset" /></td>
				<td><input class="btn btn-primary" type="submit" value="Save" /></td>
			
		
	</form:form>
	<br/>
		<a href="viewContacts" class="btn btn-info">View All Contacts</a>
		</div>
</body>
</html>