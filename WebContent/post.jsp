<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>Post an ad</title>
	<jsp:include page="/WEB-INF/common/head.jsp"></jsp:include>
</head>

<body class="teal darken-1">
	<header class="no-padding">
		<jsp:include page="/WEB-INF/common/before_login.jsp"></jsp:include>
	</header>
	<div class="container white lighten-4 ">
		<div class="row z-depth-5" style="margin-top: 50px; padding: 10px">

			<form class="col s12" id="postForm" novalidate="novalidate" method="post" action="">
				<h5>post your ad</h5>
				<div class="row" style="margin-top: 50px;">
					<div class="input-field col s12">
						<input id="title" type="text" class="validate" name="title" data-error=".error1">
						<label for="title">Title</label>
						<span class="error1"></span>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s7">
						<input id="area" type="text" class="validate" name="area" data-error=".error2">
						<label for="area">Location</label>
						<span class="error2"></span>
					</div>
					<div class="input-field col s3">
						<input id="zipcode" type="text" class="validate" name="zipcode" data-error=".error3">
						<label for="zipcode">Pin code</label>
						<span class="error3"></span>
					</div>
					<div class="input-field col s2">
						<select name="category" class="required validate" data-error=".error4" id="category">
							<option value="default" disabled selected>select a value</option>
							<option value="community">Community</option>
							<option value="event">Events</option>
							<option value="sale">Sale</option>
							<option value="housing">Housing</option>
							<option value="job">Jobs</option>
							<option value="service">Services</option>
						</select> <label>Category</label>
						<span class="error4"></span>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s12">
						<textarea id="description" class="materialize-textarea validate" name="description"
							data-error=".error5"></textarea>
						<label for="description">Description</label>
						<span class="error5"></span>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s8">
						<input id="email" type="text" class="validate" name="email" data-error=".error6"
							value="${sessionScope.user.email }">
						<label for="email">Email</label>
						<span class="error6"></span>
					</div>
					<div class="input-field col s4">
						<div class="row">
							<label> <input class="with-gap" name="contactme" type="radio" checked value="yes" />
								<span>Contact me
									through email</span>
							</label> <label> <input class="with-gap" name="contactme" type="radio" value="no"/>
								<span>Do not ontact me
									through email</span>
							</label>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s8">
						<input id="phone" type="text" class="validate" name="phone" data-error=".error7">
						<label for="phone">Phone</label>
						<span class="error7"></span>
					</div>
					<div class="input-field col s4">
						<div class="row">
							<label> <input class="with-gap" name="callme" type="checkbox" value="call" /><span>It is Ok if you call
									me with
									queries.</span>
							</label> <label> <input class="with-gap" name="callme" type="checkbox" value="text"/><span>it is Ok if
									you Text/SMS me with
									queries.</span>
							</label>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s4">
						<button class="btn waves-effect waves-light" type="submit" >
							Publish <i class="material-icons right">publish</i>
						</button>
					</div>

				</div>
			</form>
		</div>
	</div>
	<jsp:include page="/WEB-INF/common/footer.jsp"></jsp:include>
	
	<script src="js/fields.js">	</script>
	<script src="js/validate.js"></script>
</body>

</html>