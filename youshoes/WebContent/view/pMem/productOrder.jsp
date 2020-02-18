<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- Swiper -->
	<div class="swiper-container product-details">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
				<img src="${pageContext.request.contextPath}/view/img/handmade.jpg"
					alt="">
			</div>
			<div class="swiper-slide">
				<img src="${pageContext.request.contextPath}/view/img/handmade.jpg"
					alt="">
			</div>
			<div class="swiper-slide">
				<img src="${pageContext.request.contextPath}/view/img/handmade.jpg"
					alt="">
			</div>
		</div>
		<!-- Add Pagination -->
		<div class="swiper-pagination"></div>
	</div>

	<div class="container">
		<h6 class="subtitle">Basic Information</h6>
		<div class="row">
			<div class="col-12 col-md-6">
				<div class="form-group float-label active">
					<input type="text" class="form-control" required=""
						value="Ammy Johnson"> <label class="form-control-label">Name</label>
				</div>
			</div>
			<div class="col-12 col-md-6">
				<div class="form-group float-label active">
					<input type="email" class="form-control" required=""
						value="ammyjohnson@maxartkiller.com"> <label
						class="form-control-label">Email address</label>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-12 col-md-6">
				<div class="form-group float-label active">
					<input type="tel" class="form-control" required=""
						value="55 5555 555555 55"> <label
						class="form-control-label">Phone Number</label>
				</div>
			</div>
		</div>

		<h6 class="subtitle">Address</h6>

		<div class="row">
			<div class="col-12 col-md-6">
				<div class="form-group float-label active">
					<input type="text" class="form-control" required=""
						value="58, Lajpat Nagar"> <label
						class="form-control-label">Address line 1</label>
				</div>
			</div>
			<div class="col-12 col-md-6">
				<div class="form-group float-label active">
					<input type="text" class="form-control" value="Holand Street four">
					<label class="form-control-label">Address line 2</label>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-6">
				<div class="form-group float-label active">
					<input type="tel" class="form-control" required="" value="Sydney">
					<label class="form-control-label">City</label>
				</div>
			</div>
			<div class="col-6">
				<div class="form-group float-label active">
					<input type="tel" class="form-control" required="" value="25468">
					<label class="form-control-label">Pin Code</label>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-12 col-md-6">
				<div class="form-group float-label active">
					<select class="form-control">
						<option>Australia</option>
						<option>America</option>
						<option>Africa</option>
						<option>France</option>
					</select> <label class="form-control-label">Country</label>
				</div>
			</div>
		</div>


		<a href="profile-edit.html"
			class="btn btn-lg btn-default text-white btn-block btn-rounded shadow"><span>Submit</span><i
			class="material-icons">arrow_forward</i></a> <br>

	</div>

</body>
</html>