<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="blue-theme">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="Maxartkiller">

<title>Product · GoFurniture</title>

<!-- Material design icons CSS -->
<link rel="stylesheet" href="vendor/materializeicon/material-icons.css">

<!-- Roboto fonts CSS -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet">

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap-4.4.1/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Swiper CSS -->
<link href="vendor/swiper/css/swiper.min.css" rel="stylesheet">

<!-- Chosen multiselect CSS -->
<link href="vendor/chosen_v1.8.7/chosen.min.css" rel="stylesheet">

<!-- nouislider CSS -->
<link href="vendor/nouislider/nouislider.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet">

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#tabs").tabs({
			collapsible : true
		});
	});
</script>

</head>

<body>

	<div class="wrapper">
		<div class="header">
			<div class="row no-gutters">
				<div class="col-auto">
					<a href="all-products.html" class="btn  btn-link text-dark"><i
						class="material-icons">navigate_before</i></a>
				</div>
				<div class="col text-center">
					<img src="img/logo-header.png" alt="" class="header-logo">
				</div>
				<div class="col-auto">
					<a href="profile.html" class="btn  btn-link text-dark"><i
						class="material-icons">account_circle</i></a>
				</div>
			</div>
		</div>
		<div class="container">

			<!-- Swiper -->
			<div class="swiper-container product-details">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img src="img/image-4.png" alt="">
					</div>
					<div class="swiper-slide">
						<img src="img/image-4.png" alt="">
					</div>
					<div class="swiper-slide">
						<img src="img/image-4.png" alt="">
					</div>
				</div>
				<!-- Add Pagination -->
				<div class="swiper-pagination"></div>
			</div>


			<button class="btn btn-sm btn-link p-0">
				<i class="material-icons md-18">favorite_outline</i>
			</button>
			<a href="javascript:void(0)"
				class="btn btn-sm btn-default btn-rounded ml-2" data-toggle="modal"
				data-target="#share"><i class="material-icons mb-18 mr-2">share</i>Share</a>
			<div class="badge badge-success float-right mt-1">10% off</div>

			<p class="text-secondary my-3 small">
				<i class="material-icons text-warning md-18 vm">star</i> <i
					class="material-icons text-warning md-18 vm">star</i> <i
					class="material-icons text-warning md-18 vm">star</i> <i
					class="material-icons text-secondary md-18 vm">star</i> <i
					class="material-icons text-secondary md-18 vm">star</i> <span
					class="text-dark vm ml-2">Rating 4.2</span> <span class="vm">based
					on 245 reviews</span>
			</p>

			<a href="#" class="text-dark mb-1 mt-2 h6 d-block">Grey Sofa</a>
			<p class="text-secondary small mb-2">Imported from Simla</p>

			<p class="text-secondary">Lorem ipsum dolor sit amet, consect
				etur adipiscing elit. Sndisse conv allis. Lorem ipsum dolor sit
				amet, consect etur adipiscing elit. Sandside conv allis .</p>
			<div class="row mb-4">
				<div class="col">
					<h3 class="text-success font-weight-normal mb-0">
						$ 120<sup>.00</sup>
					</h3>
					<p class="text-secondary text-mute mb-0">1.0 kg</p>
				</div>
				<div class="col-auto align-self-center">
					<button class="btn btn-lg btn-default shadow btn-rounded">
						Add <i class="material-icons md-18">shopping_cart</i>
					</button>
				</div>
			</div>

			<h6 class="subtitle">Product Budget</h6>
			<div class="row bg-white py-3">
				<div class="col-6 mb-3">
					<p>
						<i class="material-icons text-warning md-18 vm">star</i> <i
							class="material-icons text-warning md-18 vm">star</i> <i
							class="material-icons text-warning md-18 vm">star</i> <i
							class="material-icons text-secondary md-18 vm">star</i> <i
							class="material-icons text-secondary md-18 vm">star</i>
					</p>
				</div>
				<div class="col-6 mb-3 text-right">
					<p class="text-muted small">2 hours ago</p>
				</div>
				<div class="col-auto align-self-start">
					<figure class="avatar avatar-50">
						<img src="img/user1.png" alt="">
					</figure>
				</div>
				<div class="col">
					<h6>Lorem ipsum dolor sit amet consectetur adipiscing lorem
						ipsum dolor.</h6>
					<p class="text-secondary small">Lorem ipsum dolor sit amet,
						consect etur adipiscing elit. Sndisse conv allis. Lorem ipsum
						dolor sit amet, consect etur adipiscing elit. Sandside conv allis
						.</p>
				</div>
			</div>

			<h6 class="subtitle">Add Comment</h6>
			<p class="text-center">
				<i class="material-icons h3 text-warning vm">star</i> <i
					class="material-icons h3 text-warning vm">star</i> <i
					class="material-icons h3 text-warning vm">star</i> <i
					class="material-icons h3 text-secondary vm">star</i> <i
					class="material-icons h3 text-secondary vm">star</i>
			</p>

			<!--             <div class="form-group float-label active">
                <input type="text" class="form-control" required="" value="Jordan Simond">
                <label class="form-control-label">Name</label>
            </div>
            <div class="form-group float-label active">
                <input type="email" class="form-control" required="" value="gofruites@gmail.co" >
                <label class="form-control-label">Email address</label>
            </div>
            <div class="form-group float-label">
                <textarea class="form-control" required=""></textarea>
                <label class="form-control-label">Type your comment...</label>
            </div> -->

			<div id="tabs">
				<ul>
					<li><a href="#tabs-1">Nunc tincidunt</a></li>
					<li><a href="#tabs-2">Proin dolor</a></li>
					<li><a href="#tabs-3">Aenean lacinia</a></li>
				</ul>
				<div id="tabs-1">
					<p>
						<strong>Click this tab again to close the content pane.</strong>
					</p>
					<p>Proin elit arcu, rutrum commodo, vehicula tempus, commodo a,
						risus. Curabitur nec arcu. Donec sollicitudin mi sit amet mauris.
						Nam elementum quam ullamcorper ante. Etiam aliquet massa et lorem.
						Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo.
						Vivamus sed magna quis ligula eleifend adipiscing. Duis orci.
						Aliquam sodales tortor vitae ipsum. Aliquam nulla. Duis aliquam
						molestie erat. Ut et mauris vel pede varius sollicitudin. Sed ut
						dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc tristique
						tempus lectus.</p>
				</div>
				<div id="tabs-2">
					<p>
						<strong>Click this tab again to close the content pane.</strong>
					</p>
					<p>Morbi tincidunt, dui sit amet facilisis feugiat, odio metus
						gravida ante, ut pharetra massa metus id nunc. Duis scelerisque
						molestie turpis. Sed fringilla, massa eget luctus malesuada, metus
						eros molestie lectus, ut tempus eros massa ut dolor. Aenean
						aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit
						aliquam. Praesent in eros vestibulum mi adipiscing adipiscing.
						Morbi facilisis. Curabitur ornare consequat nunc. Aenean vel
						metus. Ut posuere viverra nulla. Aliquam erat volutpat.
						Pellentesque convallis. Maecenas feugiat, tellus pellentesque
						pretium posuere, felis lorem euismod felis, eu ornare leo nisi vel
						felis. Mauris consectetur tortor et purus.</p>
				</div>
				<div id="tabs-3">
					<p>
						<strong>Click this tab again to close the content pane.</strong>
					</p>
					<p>Duis cursus. Maecenas ligula eros, blandit nec, pharetra at,
						semper at, magna. Nullam ac lacus. Nulla facilisi. Praesent
						viverra justo vitae neque. Praesent blandit adipiscing velit.
						Suspendisse potenti. Donec mattis, pede vel pharetra blandit,
						magna ligula faucibus eros, id euismod lacus dolor eget odio. Nam
						scelerisque. Donec non libero sed nulla mattis commodo. Ut
						sagittis. Donec nisi lectus, feugiat porttitor, tempor ac, tempor
						vitae, pede. Aenean vehicula velit eu tellus interdum rutrum.
						Maecenas commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a
						libero vitae lectus hendrerit hendrerit.</p>
				</div>
			</div>



			<a href="#" class="btn btn-lg btn-default btn-rounded shadow"><span>Comment</span><i
				class="material-icons">arrow_forward</i></a> <br> <br>

		</div>
		<div class="footer">
			<div class="no-gutters">
				<div class="col-auto mx-auto">
					<div class="row no-gutters justify-content-center">
						<div class="col-auto">
							<a href="index.html" class="btn btn-link-default active"> <i
								class="material-icons">store_mall_directory</i>
							</a>
						</div>
						<div class="col-auto">
							<a href="statistics.html" class="btn btn-link-default"> <i
								class="material-icons">insert_chart_outline</i>
							</a>
						</div>
						<div class="col-auto">
							<a href="cart.html" class="btn btn-default shadow centerbutton">
								<i class="material-icons">local_mall</i>
							</a>
						</div>
						<div class="col-auto">
							<a href="./pMem/bookmark.jsp" class="btn btn-link-default"> <i
								class="material-icons">favorite</i>
							</a>
						</div>
						<div class="col-auto">
							<a href="profile.html" class="btn btn-link-default"> <i
								class="material-icons">account_circle</i>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="share" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog modal-sm modal-dialog-end" role="document">
			<div class="modal-content text-center">
				<div class="modal-body">
					<h6 class="subtitle mt-0">Share with</h6>
					<div class="row">
						<div class="col-12">
							<figure class="avatar avatar-50 border-0 mx-1">
								<img src="img/facebook.png" alt="">
							</figure>
							<figure class="avatar avatar-50 border-0 mx-1">
								<img src="img/whatsapp.png" alt="">
							</figure>
							<figure class="avatar avatar-50 border-0 mx-1">
								<img src="img/linkdedin.png" alt="">
							</figure>
							<figure class="avatar avatar-50 border-0 mx-1">
								<img src="img/twitter.png" alt="">
							</figure>
						</div>
					</div>

					<p class="subtitle text-secondary">Recent Connected</p>
					<div class="row">
						<div class="col-12">
							<figure class="avatar avatar-50">
								<img src="img/user1.png" alt="">
							</figure>
							<figure class="avatar avatar-50">
								<img src="img/user2.png" alt="">
							</figure>
							<figure class="avatar avatar-50">
								<img src="img/user3.png" alt="">
							</figure>
							<figure class="avatar avatar-50">
								<img src="img/user4.png" alt="">
							</figure>
							<figure class="avatar avatar-50">
								<img src="img/user2.png" alt="">
							</figure>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- jquery, popper and bootstrap js -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="vendor/bootstrap-4.4.1/js/bootstrap.min.js"></script>

	<!-- swiper js -->
	<script src="vendor/swiper/js/swiper.min.js"></script>

	<!-- nouislider js -->
	<script src="vendor/nouislider/nouislider.min.js"></script>

	<!-- chosen multiselect js -->
	<script src="vendor/chosen_v1.8.7/chosen.jquery.min.js"></script>

	<!-- template custom js -->
	<script src="js/main.js"></script>

	<!-- page level script -->
	<script>
		$(window).on('load', function() {
			var swiper = new Swiper('.product-details ', {
				slidesPerView : 1,
				spaceBetween : 0,
				pagination : {
					el : '.swiper-pagination'
				}
			});

		});
	</script>

</body>

</html>
