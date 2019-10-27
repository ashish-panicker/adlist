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
	<div class="container" style="margin-top: 50px;">
		<div class="row">
			<div class="section"></div>
			<div class="col s8 offset-s2 white lighten-4 z-depth-5">
				<c:if test="${ex eq true }">
					<div class="card-panel red white-text z-depth-1">
						<span><b>Error</b><br>Unable to create user due to internal server error.</span>
					</div>
				</c:if>
				<c:if test="${auth eq false }">
					<div class="card-panel amber darken-4 white-text z-depth-1">
						You cannot post an ad unless you are logged in. Please login to continue.</span>
					</div>
				</c:if>
				<c:if test="${login eq false }">
					<div class="card-panel red white-text z-depth-1">
						<span><b>Error</b><br>Unable to login.Please make sure you have provided valid username/password.</span>
					</div>
				</c:if>
				<form class="col s12" method="post" action="login.user" id="loginForm" novalidate="novalidate">
					<h5 class="teal-text">login to your account</h5>
					
					<div class="row" style="margin-top: 50px;">
						<div class="input-field col s12">
							<input id="email" type="email" class="validate" name="email"
								placeholder="myemail@example.com" data-error=".error3"> <label for="email">Email</label>
							<div class="error3"></div>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<input id="fpassword" type="password" class="validate" name="password" data-error=".error4"
								placeholder="Provide a valid password"> <label for="password">Password</label>
							<div class="error4"></div>
						</div>
						
					</div>
					<div class="row">
						<div class="input-field col s4">
							<button class="btn waves-effect waves-light" type="submit" name="action">
								Login <i class="material-icons right">perm_identity</i>
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