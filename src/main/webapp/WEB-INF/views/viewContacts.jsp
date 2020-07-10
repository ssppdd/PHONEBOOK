<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PHONE BOOK</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<link
	href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css">

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>	
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
	src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
<script>
	$(document).ready(function() {
		$('#contactTbl').DataTable({
			"pagingType" : "full_numbers"
		});
	});
	function deleteConfirm() {
		return confirm("Are you sure, you want to delete?");
	}
</script>
</head>
<body>

	<h3>View Contacts Here</h3>

	<h5><a href="addContact">+Add New Contact</a></h5>
	<table id="contactTbl" class="table" >
		<thead>
			<tr>
				<th scope="col">S.No</th>
				<th scope="col">Name</th>
				<th scope="col">Email</th>
				<th scope="col">Phone Number</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${contacts}" var="c" varStatus="index">
				<tr>
					<th scope="row">${index.count}</th>
					<td>${c.contactName}</td>
					<td>${c.contactEmail}</td>
					<td>${c.contactNumber}</td>
					<td><a href="editContact?cid=${c.contactId}"> <img  src="imgs/edit_image.png"  width="35"  height="35"></a> |
					 <a href="deleteContact?cid=${c.contactId}" onclick="deleteConfirm()"><img  src="imgs/delete_image.jpg"  width="35"  height="35"></a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>