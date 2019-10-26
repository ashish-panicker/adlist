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
	<div class="container  white lighten-4 " style="margin-top: 50px;">
		<div class="row" style="padding-top: 50px;">
			<div class="input-field col s12 m12 z-depth-5">
				<i class="material-icons prefix">search</i> <input
					placeholder="Search for an ad" id="search" type="text"
					name="search" class="validate"> <label>SEARCH</label>
			</div>
		</div>
		
		<div class="row">
			<div class="col s12 m12 z-depth-5">
				<h5 class="start text-primarycolor">Events</h5>
				<p class="start-paragraph-text text-primarycolor">Kiosk Browser
					has an extensive feature set. You can try these features simply by
					installing Kiosk Browser, a licence is required for both personal
					and commercial use.</p>
				<div class="collection">
					<a href="#!" class="collection-item">Alvin</a> <a href="#!"
						class="collection-item ">Alvin</a> <a href="#!"
						class="collection-item">Alvin</a> <a href="#!"
						class="collection-item">Alvin</a>
				</div>

			</div>
		</div>
		
		<div class="fixed-action-btn">
			<a class="btn-floating btn-large green l"> <i
				class="large material-icons">mode_edit</i>
			</a>
			<ul>
				<li><a class="btn-floating red" href="post_ad.do"><i class="material-icons">add</i></a></li>
				<li><a class="btn-floating green darken-1"><i
						class="material-icons">account_box</i></a></li>
				<li><a class="btn-floating green"><i class="material-icons">publish</i></a></li>
				<li><a class="btn-floating blue"><i class="material-icons">attach_file</i></a></li>
			</ul>
		</div>
	</div>

	<jsp:include page="/WEB-INF/common/footer.jsp"></jsp:include>
	<script src="js/fields.js">	</script>
</html>