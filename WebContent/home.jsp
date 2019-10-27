<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>index Page</title>
<jsp:include page="/WEB-INF/common/head.jsp"></jsp:include>
<style>

/* #modal1 {
	width: 75% !important;
	height: 80% !important;
} */
</style>
</head>
<body class="teal darken-1">
	<header class="no-padding">
		<jsp:include page="/WEB-INF/common/after_login.jsp"></jsp:include>
	</header>
	<div class="container  white lighten-4 " style="margin-top: 10px;">
		<div class="col s12 z-depth-5"
			style="padding: 30px 50px 20px 50px; margin-top: 20px;">
			<div class="row " style="margin-bottom: 0;">
				<div class="input-field col s12 m12 ">
					<i class="material-icons prefix">search</i> <input
						placeholder="Search for an ad" id="search" type="text"
						name="search" class="vali "> <label>SEARCH</label>
					<button data-target="modal1"
						class="btn modal-trigger right btn-small btn-flat">advance search</button>
				</div>
			</div>

			<div class="row">
				<div class="col s12 m12 ">
					<h5 class="start text-primarycolor" id="my-post-h5">my posts</h5>
					
					<c:if test="${posted eq true }">
						<div class="card-panel green white-text z-depth-1">
							<span><b>Success</b><br>Your requirement has been posted.</span>
						</div>
					</c:if>
					<c:if test="${posted eq false }">
						<div class="card-panel red white-text z-depth-1">
							<span><b>Error</b><br>Unable to post your requirement . Please try again later..</span>
						</div>
					</c:if>

					<div class="hoverable pad-10">
						<p class="margin-1">
							<span>my post title on my post area</span> <span class="right">posted
								on : 10-October-2019 </span>
						</p>
						<p class="truncate margin-1">Kiosk Browser has an extensive
							feature set. You can try these features simply by installing
							Kiosk Browser, a licence is required for both personal and
							commercial use.</p>
						<a href="">details</a>
					</div>
					<div class="hoverable pad-10" s>
						<p class="margin-1">
							<span>my post title on my post area</span> <span class="right">posted
								on : 10-October-2019 </span>
						</p>
						<p class="truncate margin-1">Kiosk Browser has an extensive
							feature set. You can try these features simply by installing
							Kiosk Browser, a licence is required for both personal and
							commercial use.</p>
						<a href="">details</a>
					</div>
					<div class="hoverable pad-10" s>
						<p class="margin-1">
							<span>my post title on my post area</span> <span class="right">posted
								on : 10-October-2019 </span>
						</p>
						<p class="truncate margin-1">Kiosk Browser has an extensive
							feature set. You can try these features simply by installing
							Kiosk Browser, a licence is required for both personal and
							commercial use.</p>
						<a href="">details</a>
					</div>
					<div class="hoverable pad-10" s>
						<p class="margin-1">
							<span>my post title on my post area</span> <span class="right">posted
								on : 10-October-2019 </span>
						</p>
						<p class="truncate margin-1">Kiosk Browser has an extensive
							feature set. You can try these features simply by installing
							Kiosk Browser, a licence is required for both personal and
							commercial use.</p>
						<a href="">details</a>
					</div>
					<div class="hoverable pad-10" s>
						<p class="margin-1">
							<span>my post title on my post area</span> <span class="right">posted
								on : 10-October-2019 </span>
						</p>
						<p class="truncate margin-1">Kiosk Browser has an extensive
							feature set. You can try these features simply by installing
							Kiosk Browser, a licence is required for both personal and
							commercial use.</p>
						<a href="">details</a>
					</div>
				</div>
				<div class="row" style="margin-bottom: 0;">
					<div class="input-field col left">
						<button class="btn waves-effect waves-light btn-flat btn-small"
							type="submit">
							previous <i class="material-icons left">arrow_back</i>
						</button>
					</div>
					<div class="input-field col right">
						<button class="btn waves-effect waves-light btn-flat btn-small"
							type="submit">
							next <i class="material-icons right">arrow_forward</i>
						</button>
					</div>

				</div>
			</div>
		</div>
		<div class="fixed-action-btn">
			<a class="btn-floating btn-large green l"> <i
				class="large material-icons">mode_edit</i>
			</a>
			<ul>
				<li><a class="btn-floating red" href="post_ad.do"><i
						class="material-icons">add</i></a></li>
				<li><a class="btn-floating green darken-1"><i
						class="material-icons">account_box</i></a></li>
				<li><a class="btn-floating green"><i class="material-icons">publish</i></a></li>
				<li><a class="btn-floating blue"><i class="material-icons">attach_file</i></a></li>
			</ul>
		</div>
	</div>

	<!-- modal -->
	<!-- Modal Structure -->
	<div id="modal1" class="modal">
		<div class="modal-content">
			<h5>Advanced search</h5>
			<div class="row">
				<form class="col s12"> 
					<div class="row">
						<div class="input-field col s8">
							<input id="email" type="email" class="validate"> <label
								for="email">Search keywords</label> <span class="helper-text">Helper
								text</span>
						</div>
						<div class="input-field col s4">
							<select name="category" class="required validate" data-error=".error4" id="category">
							<option value="default" disabled selected>select a value</option>
							<option value="1">Community</option>
							<option value="2">Events</option>
							<option value="3">Sale</option>
							<option value="4">Housing</option>
							<option value="5">Jobs</option>
							<option value="6">Services</option>
						</select> <label>Category</label>
						<span class="error4"></span>
						</div>
					</div>
					<!--  -->
					<div class="row" >
					<div class="input-field col s6">
						<input id="area" type="text" class="validate" name="area" data-error=".error2">
						<label for="area">Location</label>
						<span class="error2"></span>
					</div>
						<div class="input-field col s3">
							<input id="startdate" type="email" class="datepicker"> <label
								for="startdate">Start Date</label> <span class="helper-text">Helper
								text</span>
						</div>
						<div class="input-field col s3">
							<input id="enddate" type="email" class="datepicker"> <label
								for="startenddatedate">End Date</label> <span
								class="helper-text">Helper text</span>
						</div>
						
					</div>
					<button class="btn waves-effect waves-light btn-flat btn-small right"
							type="submit">
							search <i class="material-icons left">search</i>
						</button>
				</form>
			</div>
		</div>
	</div>
	<!-- modal ends -->

	<jsp:include page="/WEB-INF/common/footer.jsp"></jsp:include>
	<script src="js/fields.js">
		
	</script>

	<script>
		$(document).ready(function() {
			$('.modal').modal();
			$('.datepicker').datepicker({
				container : 'body'
			});
		});
	</script>
</html>