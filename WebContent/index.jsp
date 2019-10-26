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
		<jsp:include page="/WEB-INF/common/before_login.jsp"></jsp:include>
	</header>
	<div class="container  white lighten-4" style="margin-top: 50px;">
		<div class="row" style="padding-top: 50px;">
			<div class="input-field col s12 m12">
				<i class="material-icons prefix">search</i> <input
					placeholder="Search for an ad" id="search" type="text"
					name="search" class="validate"> <label>SEARCH</label>
			</div>
		</div>
		<div class="row">
			<div class="col s12 m12">
				<h5 class="start text-primarycolor">Community</h5>
				<p class="start-paragraph-text text-primarycolor" style="width:100%;; overflow:none;;">Kiosk Browser
					has an extensive feature set. You can try these features simply by
					installing Kiosk Browser, a licence is required for both personal
					and commercial use.</p>
				<a href="#!" class="collection-item">Alvin</a> <br> <a
					href="#!" class="collection-item ">Alvin</a> <br> <a href="#!"
					class="collection-item">Alvin</a> <br> <a href="#!"
					class="collection-item">Alvin</a>
			</div>
		</div>
		<div class="row">
			<div class="col s12 m12">
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
		<div class="row">
			<div class="col s12 m6">
				<h5 class="start text-primarycolor">Sales</h5>
				<p class="start-paragraph-text text-primarycolor">Kiosk Browser
					has an extensive feature set. You can try these features simply by
					installing Kiosk Browser, a licence is required for both personal
					and commercial use.</p>
			</div>
			<div class="col s12 m6">
				<h5 class="start text-primarycolor">Housing</h5>
				<p class="start-paragraph-text text-primarycolor">Kiosk Browser
					has an extensive feature set. You can try these features simply by
					installing Kiosk Browser, a licence is required for both personal
					and commercial use.</p>
			</div>
		</div>
		<div class="row">
			<div class="col s12 m6">
				<h5 class="start text-primarycolor">Jobs</h5>
				<p class="start-paragraph-text text-primarycolor">Kiosk Browser
					has an extensive feature set. You can try these features simply by
					installing Kiosk Browser, a licence is required for both personal
					and commercial use.</p>
			</div>
			<div class="col s12 m6">
				<h5 class="start text-primarycolor">Services</h5>
				<p class="start-paragraph-text text-primarycolor">Kiosk Browser
					has an extensive feature set. You can try these features simply by
					installing Kiosk Browser, a licence is required for both personal
					and commercial use.</p>
			</div>
		</div>
		
	</div>

	<jsp:include page="/WEB-INF/common/footer.jsp"></jsp:include>
	<script src="js/fields.js">	</script>
</body>
</html>