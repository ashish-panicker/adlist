<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>index Page</title>
<jsp:include page="/WEB-INF/common/head.jsp"></jsp:include>

</head>
<body class="teal darken-1">
	<header class="no-padding">
		<jsp:include page="/WEB-INF/common/after_login.jsp"></jsp:include>
	</header>
	<div class="container  white lighten-4 " style="margin-top: 10px;">
		<!-- Modal Trigger -->
		<button data-target="modal1" class="btn modal-trigger">Modal</button>

		<!-- Modal Structure -->
		<div id="modal1" class="modal">
			<div class="modal-content">
				<h4>Modal Header</h4>
				<p>A bunch of text</p>
			</div>
			<div class="modal-footer">
				<a href="#!" class="modal-close waves-effect waves-green btn-flat">Agree</a>
			</div>
		</div
	</div>


	<jsp:include page="/WEB-INF/common/footer.jsp"></jsp:include>
	<script src="js/fields.js">
		
	</script>

	<script>
	$(document).ready(function(){
	    $('.modal').modal();
	  });
	</script>
</html>