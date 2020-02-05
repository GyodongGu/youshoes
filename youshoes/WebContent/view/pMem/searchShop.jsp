<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="blue-theme">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="Maxartkiller">

    <title>Products · GoFurniture</title>

    <!-- Material design icons CSS -->
    <link rel="stylesheet" href="../vendor/materializeicon/material-icons.css">

    <!-- Roboto fonts CSS -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">

    <!-- Bootstrap core CSS -->
    <link href="../vendor/bootstrap-4.4.1/css/bootstrap.min.css" rel="stylesheet">

    <!-- Swiper CSS -->
    <link href="../vendor/swiper/css/swiper.min.css" rel="stylesheet">

    <!-- Chosen multiselect CSS -->
    <link href="../vendor/chosen_v1.8.7/chosen.min.css" rel="stylesheet">

    <!-- nouislider CSS -->
    <link href="../vendor/nouislider/nouislider.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../css/style.css" rel="stylesheet">
</head>

<body>
<!--     <div class="row no-gutters vh-100 loader-screen">
        <div class="col align-self-center text-white text-center">
            <img src="../img/logo.png" alt="logo">
            <h1><span class="font-weight-light">Go</span>Furniture</h1>
            <div class="laoderhorizontal"><div></div><div></div><div></div><div></div></div>
        </div>
    </div> -->
    <div class="sidebar">
        <div class="text-center">
            <div class="figure-menu shadow">
                <figure><img src="../img/user1.png" alt=""></figure>
            </div>
            <h5 class="mb-1 ">Ammy Jahnson</h5>
            <p class="text-mute small">Sydney, Australia</p>
        </div>
        <br>
        <div class="row mx-0">
            <div class="col">
                <div class="card mb-3 border-0 shadow-sm bg-template-light">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <p class="text-secondary small mb-0">Balance Available</p>
                                <h6 class="text-dark my-0">$2585.00</h6>
                            </div>
                            <div class="col-auto">
                                <button class="btn btn-default button-rounded-36 shadow"><i class="material-icons">add</i></button>
                            </div>
                        </div>
                    </div>
                </div>
                <h5 class="subtitle text-uppercase"><span>Menu</span></h5>
                <div class="list-group main-menu">
                    <a href="index.html" class="list-group-item list-group-item-action active">Store</a>
                    <a href="notification.html" class="list-group-item list-group-item-action">Notification <span class="badge badge-dark text-white">2</span></a>
                    <a href="all-products.html" class="list-group-item list-group-item-action">All Products</a>
                    <a href="my-order.html" class="list-group-item list-group-item-action">My Order</a>
                    <a href="profile.html" class="list-group-item list-group-item-action">My Profile</a>
                    <a href="controls.html" class="list-group-item list-group-item-action">Pages Controls <span class="badge badge-light ml-2">Check</span></a>
                    <a href="setting.html" class="list-group-item list-group-item-action">Settings</a>
                    <a href="login.html" class="list-group-item list-group-item-action mt-4">Logout</a>
                </div>
            </div>
        </div>
    </div>
    <div class="wrapper">
        <div class="header">
            <div class="row no-gutters">
                <div class="col-auto">
                    <button class="btn  btn-link text-dark menu-btn"><img src="../img/menu.png" alt=""><span class="new-notification"></span></button>
                </div>
                <div class="col text-center"><img src="../img/logo-header.png" alt="" class="header-logo"></div>
                <div class="col-auto">
                    <a href="profile.html" class="btn  btn-link text-dark"><i class="material-icons">account_circle</i></a>
                </div>
            </div>
        </div>
        <div class="container">
            <input type="text" class="form-control form-control-lg search my-3" placeholder="Search">

            <div class="subtitle h6">
                <div class="d-inline-block">
                    All fresh fruits<br>
                    <p class="small text-mute">2154 products</p>
                </div>
                <div class="float-right">
                    <div class="btn-group filter-group" role="group" aria-label="Basic example">
                        <a href="all-products.html" class="btn btn-light active"><i class="material-icons">view_module</i></a>
                        <a href="all-products-list.html" class="btn btn-light"><i class="material-icons">view_list</i></a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                    <div class="card shadow-sm border-0 mb-4">
                        <div class="card-body">
                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite_outline</i></button>
                            <div class="badge badge-success float-right mt-1">10% off</div>

                            <figure class="product-image"><img src="../img/image-4.png" alt="" class=""></figure>

                            <a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">Man's Shoes</a>
                            <p class="text-secondary small mb-2">Imported from Simla</p>
                            <h5 class="text-success font-weight-normal mb-0">$ 120<sup>.00</sup></h5>
                            <p class="text-secondary small text-mute mb-0">1.0 kg</p>
                            <button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right"><i class="material-icons md-18">shopping_cart</i></button>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                    <div class="card shadow-sm border-0 mb-4">
                        <div class="card-body">
                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite_outline</i></button>
                            <div class="badge badge-success float-right mt-1">10% off</div>

                            <figure class="product-image"><img src="../img/image-5.png" alt="" class=""></figure>

                            <a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">Antique Table</a>
                            <p class="text-secondary small mb-2">Unique Collection</p>
                            <h5 class="text-success font-weight-normal mb-0">$ 100<sup>.00</sup></h5>
                            <p class="text-secondary small text-mute mb-0">1.0 kg</p>
                            <button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right"><i class="material-icons md-18">shopping_cart</i></button>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                    <div class="card shadow-sm border-0 mb-4">
                        <div class="card-body">
                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite_outline</i></button>
                            <div class="badge badge-primary float-right mt-1">10% off</div>

                            <figure class="product-image"><img src="../img/image-6.png" alt="" class=""></figure>

                            <a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">King Sofa</a>
                            <p class="text-secondary small mb-2">Royal & Luxurious</p>
                            <h5 class="text-success font-weight-normal mb-0">$ 120<sup>.00</sup></h5>
                            <p class="text-secondary small text-mute mb-0">1.0 kg</p>
                            <button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right"><i class="material-icons md-18">shopping_cart</i></button>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                    <div class="card shadow-sm border-0 mb-4">
                        <div class="card-body">
                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite_outline</i></button>
                            <div class="badge badge-info float-right mt-1">50% off</div>

                            <figure class="product-image"><img src="../img/image-7.png" alt="" class=""></figure>

                            <a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">Hangings</a>
                            <p class="text-secondary small mb-2">Most Demanded</p>
                            <h5 class="text-success font-weight-normal mb-0">$ 120<sup>.00</sup></h5>
                            <p class="text-secondary small text-mute mb-0">1.0 kg</p>
                            <button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right"><i class="material-icons md-18">shopping_cart</i></button>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                    <div class="card shadow-sm border-0 mb-4">
                        <div class="card-body">
                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite_outline</i></button>
                            <div class="badge badge-success float-right mt-1">10% off</div>

                            <figure class="product-image"><img src="../img/image-4.png" alt="" class=""></figure>

                            <a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">Grey Sofa</a>
                            <p class="text-secondary small mb-2">Imported from Simla</p>
                            <h5 class="text-success font-weight-normal mb-0">$ 120<sup>.00</sup></h5>
                            <p class="text-secondary small text-mute mb-0">1.0 kg</p>
                            <button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right"><i class="material-icons md-18">shopping_cart</i></button>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                    <div class="card shadow-sm border-0 mb-4">
                        <div class="card-body">
                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite_outline</i></button>
                            <div class="badge badge-success float-right mt-1">10% off</div>

                            <figure class="product-image"><img src="../img/image-5.png" alt="" class=""></figure>

                            <a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">Antique Table</a>
                            <p class="text-secondary small mb-2">Unique Collection</p>
                            <h5 class="text-success font-weight-normal mb-0">$ 100<sup>.00</sup></h5>
                            <p class="text-secondary small text-mute mb-0">1.0 kg</p>
                            <button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right"><i class="material-icons md-18">shopping_cart</i></button>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                    <div class="card shadow-sm border-0 mb-4">
                        <div class="card-body">
                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite_outline</i></button>
                            <div class="badge badge-success float-right mt-1">10% off</div>

                            <figure class="product-image"><img src="../img/image-4.png" alt="" class=""></figure>

                            <a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">Grey Sofa</a>
                            <p class="text-secondary small mb-2">Imported from Simla</p>
                            <h5 class="text-success font-weight-normal mb-0">$ 120<sup>.00</sup></h5>
                            <p class="text-secondary small text-mute mb-0">1.0 kg</p>
                            <button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right"><i class="material-icons md-18">shopping_cart</i></button>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                    <div class="card shadow-sm border-0 mb-4">
                        <div class="card-body">
                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite_outline</i></button>
                            <div class="badge badge-success float-right mt-1">10% off</div>

                            <figure class="product-image"><img src="../img/image-5.png" alt="" class=""></figure>

                            <a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">Antique Table</a>
                            <p class="text-secondary small mb-2">Unique Collection</p>
                            <h5 class="text-success font-weight-normal mb-0">$ 100<sup>.00</sup></h5>
                            <p class="text-secondary small text-mute mb-0">1.0 kg</p>
                            <button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right"><i class="material-icons md-18">shopping_cart</i></button>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                    <div class="card shadow-sm border-0 mb-4">
                        <div class="card-body">
                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite_outline</i></button>
                            <div class="badge badge-primary float-right mt-1">10% off</div>

                            <figure class="product-image"><img src="../img/image-6.png" alt="" class=""></figure>

                            <a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">King Sofa</a>
                            <p class="text-secondary small mb-2">Royal & Luxurious</p>
                            <h5 class="text-success font-weight-normal mb-0">$ 120<sup>.00</sup></h5>
                            <p class="text-secondary small text-mute mb-0">1.0 kg</p>
                            <button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right"><i class="material-icons md-18">shopping_cart</i></button>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                    <div class="card shadow-sm border-0 mb-4">
                        <div class="card-body">
                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite_outline</i></button>
                            <div class="badge badge-info float-right mt-1">50% off</div>

                            <figure class="product-image"><img src="../img/image-7.png" alt="" class=""></figure>

                            <a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">Hangings</a>
                            <p class="text-secondary small mb-2">Most Demanded</p>
                            <h5 class="text-success font-weight-normal mb-0">$ 120<sup>.00</sup></h5>
                            <p class="text-secondary small text-mute mb-0">1.0 kg</p>
                            <button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right"><i class="material-icons md-18">shopping_cart</i></button>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                    <div class="card shadow-sm border-0 mb-4">
                        <div class="card-body">
                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite_outline</i></button>
                            <div class="badge badge-success float-right mt-1">10% off</div>

                            <figure class="product-image"><img src="../img/image-4.png" alt="" class=""></figure>

                            <a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">Grey Sofa</a>
                            <p class="text-secondary small mb-2">Imported from Simla</p>
                            <h5 class="text-success font-weight-normal mb-0">$ 120<sup>.00</sup></h5>
                            <p class="text-secondary small text-mute mb-0">1.0 kg</p>
                            <button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right"><i class="material-icons md-18">shopping_cart</i></button>
                        </div>
                    </div>
                </div>
                <div class="col-6 col-md-4 col-lg-3 col-xl-2">
                    <div class="card shadow-sm border-0 mb-4">
                        <div class="card-body">
                            <button class="btn btn-sm btn-link p-0"><i class="material-icons md-18">favorite_outline</i></button>
                            <div class="badge badge-success float-right mt-1">10% off</div>

                            <figure class="product-image"><img src="../img/image-5.png" alt="" class=""></figure>

                            <a href="product-details.html" class="text-dark mb-1 mt-2 h6 d-block">Antique Table</a>
                            <p class="text-secondary small mb-2">Unique Collection</p>
                            <h5 class="text-success font-weight-normal mb-0">$ 100<sup>.00</sup></h5>
                            <p class="text-secondary small text-mute mb-0">1.0 kg</p>
                            <button class="btn btn-default button-rounded-36 shadow-sm float-bottom-right"><i class="material-icons md-18">shopping_cart</i></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12 text-center">
                    <div class="btn btn-default btn-rounded mb-3">
                        <div class="btn-loader"><div></div><div></div><div></div><div></div></div>
                        <h6 class="d-inline-block text-left mx-2 mb-0 text-normal">Loading Content<br><small class="text-mute">Please wait for a while...</small></h6>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <div class="no-gutters">
                <div class="col-auto mx-auto">
                    <div class="row no-gutters justify-content-center">
                        <div class="col-auto">
                            <a href="index.html" class="btn btn-link-default active">
                                <i class="material-icons">store_mall_directory</i>
                            </a>
                        </div>
                        <div class="col-auto">
                            <a href="statistics.html" class="btn btn-link-default">
                                <i class="material-icons">insert_chart_outline</i>
                            </a>
                        </div>
                        <div class="col-auto">
                            <a href="cart.html" class="btn btn-default shadow centerbutton">
                                <i class="material-icons">local_mall</i>
                            </a>
                        </div>
                        <div class="col-auto">
                            <a href="favorite-products.html" class="btn btn-link-default">
                                <i class="material-icons">favorite</i>
                            </a>
                        </div>
                        <div class="col-auto">
                            <a href="profile.html" class="btn btn-link-default">
                                <i class="material-icons">account_circle</i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="filter">
        <button class="btn btn-default filter-btn shadow"><i class="material-icons">filter_list</i></button>
        <div class="container filters-container">
            <div class="subtitle h6">
                <div class="d-inline-block">
                    Filter Criteria<br>
                    <p class="small text-mute">2154 products</p>
                </div>
            </div>
            <hr>
            <div class="form-group">
                <label class="form-control-lable">
                    Select Price Range
                </label>
                <br>
                <div id="rangeslider" class="mt-2"></div>
            </div>
            <div class="form-group float-label pt-0">
                <div class="row">
                    <div class="col">
                        <input type="number" min="0" max="500" value="100" step="1" id="input-select" class="form-control">
                    </div>
                    <div class="col-auto pt-2"> to </div>
                    <div class="col">
                        <input type="number" min="0" max="500" value="100" step="1" id="input-number" class="form-control">
                    </div>
                </div>
            </div>
            <div class="form-group float-label active">
                <select class="form-control chosen" multiple>
                    <optgroup label="Sofa">
                        <option>King Sofa</option>
                        <option>Rajpuri</option>
                        <option>Sofa</option>
                    </optgroup>
                    <optgroup label="Chair">
                        <option>Office Chair</option>
                        <option>General</option>
                    </optgroup>
                    <optgroup label="Tables">
                        <option>General</option>
                        <option>Kitchen</option>
                        <option>Office</option>
                    </optgroup>
                </select>
                <label class="form-control-label">Select Fruite</label>
            </div>
            <div class="form-group float-label">
                <input type="text" class="form-control">
                <label class="form-control-label">Keyword</label>
            </div>

            <div class="form-group float-label active">
                <select class="form-control chosen">
                    <option>10% </option>
                    <option>30%</option>
                    <option>50%</option>
                    <option>80%</option>
                </select>
                <label class="form-control-label">Offer Discount</label>
            </div>

            <br>
            <button class="btn btn-light btn-rounded btn-block">Search</button>
            <br>

        </div>
    </div>
    <!-- jquery, popper and bootstrap js -->
    <script src="../js/jquery-3.3.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../vendor/bootstrap-4.4.1/js/bootstrap.min.js"></script>

    <!-- swiper js -->
    <script src="../vendor/swiper/js/swiper.min.js"></script>

    <!-- nouislider js -->
    <script src="../vendor/nouislider/nouislider.min.js"></script>

    <!-- chosen multiselect js -->
    <script src="../vendor/chosen_v1.8.7/chosen.jquery.min.js"></script>

    <!-- template custom js -->
    <script src="../js/main.js"></script>

    <!-- page level script -->
    <script>
        $(window).on('load', function() {
            var swiper = new Swiper('.small-slide', {
                slidesPerView: 'auto',
                spaceBetween: 0,
            });

            var swiper = new Swiper('.news-slide', {
                slidesPerView: 5,
                spaceBetween: 0,
                pagination: {
                    el: '.swiper-pagination',
                },
                breakpoints: {
                    1024: {
                        slidesPerView: 4,
                        spaceBetween: 0,
                    },
                    768: {
                        slidesPerView: 3,
                        spaceBetween: 0,
                    },
                    640: {
                        slidesPerView: 2,
                        spaceBetween: 0,
                    },
                    320: {
                        slidesPerView: 2,
                        spaceBetween: 0,
                    }
                }
            });
            
            /* range picker for filter */
            var html5Slider = document.getElementById('rangeslider');
            noUiSlider.create(html5Slider, {
                start: [0, 100],
                connect: true,
                range: {
                    'min': 0,
                    'max': 500
                }
            });

            var inputNumber = document.getElementById('input-number');
            var select = document.getElementById('input-select');

            html5Slider.noUiSlider.on('update', function(values, handle) {
                var value = values[handle];

                if (handle) {
                    inputNumber.value = value;
                } else {
                    select.value = Math.round(value);
                }
            });
            select.addEventListener('change', function() {
                html5Slider.noUiSlider.set([this.value, null]);
            });
            inputNumber.addEventListener('change', function() {
                html5Slider.noUiSlider.set([null, this.value]);
            });

            /* chosen select*/
            $(".chosen").chosen();
        });

    </script>

</body>

</html>
