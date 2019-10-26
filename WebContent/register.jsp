<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
	<meta charset="ISO-8859-1">
	<title>Register for a new account</title>
	<jsp:include page="/WEB-INF/common/head.jsp"></jsp:include>
</head>

<body class="teal darken-1">
	<header class="no-padding">
		<jsp:include page="/WEB-INF/common/before_login.jsp"></jsp:include>
	</header>
	<div class="container white lighten-4" style="margin-top: 50px;">
		<div class="row">
			<div class="section"></div>
			<div class="col s12">
			
				<c:if test="${ex eq true }">
					<div class="card-panel red white-text s8 offset-s2">
						<span><b>Error</b><br>Unable to create user due to internal server error.</span>
					</div>
				</c:if>
				<c:if test="${userPresent eq true }">
					<div class="card-panel red white-text s8 offset-s2">
						<span><b>Error</b><br>Unable to create user as user already exists..</span>
					</div>
				</c:if>
				
				<c:if test="${ex eq false }">
					<div class="card-panel green white-text s8 offset-s2" >
						<p>Success </p>
						<p>User created successfully. Your username is ${user.email}.</p>
					</div>
				</c:if>
				<form class="col s12" method="post" action="register.user" id="registerForm" novalidate="novalidate">
					<h5 class="teal-text">register here for a new account</h5>
					<div class="row"  style="margin-top: 50px;">
						<div class="input-field col s6">
							<input placeholder="John" id="firstname" type="text" name="firstName" class="validate"
								data-error=".error1">
							<label for="firstname">First
								Name</label>
							<div class="error1"></div>
						</div>
						<div class="input-field col s6">
							<input id="last_ame" type="text" class="validate" placeholder="Smith" name="lastName"
								data-error=".error2">
							<label for="lastname">Last Name</label>
							<div class="error2"></div>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<input id="email" type="email" class="validate" name="email"
								placeholder="myemail@example.com" data-error=".error3"> <label for="email">Email</label>
							<div class="error3"></div>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s6">
							<input id="fpassword" type="password" class="validate" name="password" data-error=".error4"
								placeholder="Provide a valid password"> <label for="password">Password</label>
							<div class="error4"></div>
						</div>
						<div class="input-field col s6">
							<input id="cpassword" type="password" class="validate" name="confirmPassword"
								data-error=".error5" placeholder="Confirm the password you entered"> <label for="password">Confirm
								Password</label>
							<div class="error5"></div>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s4">
							<button class="btn waves-effect waves-light" type="submit" name="action">
								Register <i class="material-icons right">how_to_reg</i>
							</button>
						</div>

					</div>
				</form>
			</div>
			
		</div>
	</div>
	<jsp:include page="/WEB-INF/common/footer.jsp"></jsp:include>
	<script src="js/validate.js"></script>
</body>

</html>