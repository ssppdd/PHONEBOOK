<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css"/>
<script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
<script src="js/form-validation.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>	
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
				<label for="formGroupExampleInput">Contact Name </label>
				<form:input name="formGroupExampleInput" path="contactName" class="form-control" id="formGroupExampleInput" placeholder="Enter Name" required="true"/>
				</div>
			
			   <div class="form-group">
				<label for="formGroupExampleInput">Contact Email </label>
				<form:input type="email" name="formGroupExampleInput2" path="contactEmail" class="form-control" id="formGroupExampleInput2" placeholder="Enter Email" required="true"/>
				</div>
			
			
			<div class="form-group">
				<label for="formGroupExampleInput">Contact Number </label>
				<form:input name="formGroupExampleInput3" path="contactNumber" class="form-control" id="formGroupExampleInput3" placeholder="Enter Number" required="true"/>
				</div>
			
			
				<td><input type="reset" value="Reset" /></td>
				<td><input type="submit" value="Save" /></td>
			
		
	</form:form>
	
		<a href="viewContacts">View All Contacts</a>
		</div>
</body>
</html>