<!DOCTYPE html>
<html>

<head>
    <base href="{{asset('public/layout/frontend')}}/">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Hoang Anh Shop @yield('title')</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/home.css">
    <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script type="text/javascript">
    $(function() {
        var pull = $('#pull');
        menu = $('nav ul');
        menuHeight = menu.height();

        $(pull).on('click', function(e) {
            e.preventDefault();
            menu.slideToggle();
        });
    });

    $(window).resize(function() {
        var w = $(window).width();
        if (w > 320 && menu.is(':hidden')) {
            menu.removeAttr('style');
        }
    });
    </script>
</head>

<body>
    <!-- header -->
    <header id="header">
        <div class="container">
            <div class="row">
                <div id="logo" class="col-md-3 col-sm-12 col-xs-12">
                    <h1>
                        <a href="{{asset('/')}}"><img src="img/home/logo1.png" ></a>
                        <nav><a id="pull" class="btn btn-danger" href="#">
                                <i class="fa fa-bars"></i>
                            </a></nav>
                    </h1>
                </div>
                
                <div id="search" class="col-md-7 col-sm-12 col-xs-12">
                   <form action="{{asset('search/')}}" method="get" >
                        <input type="text" name="result" placeholder="Search">
                         <input type="submit"  >
                   </form> 
                </div>
                
                
                <div id="cart" class="col-md-2 col-sm-12 col-xs-12">
                    <a class="display" href="#">Gi??? h??ng</a>
                    <a href="{{asset('cart/show')}}">{{Cart::count()}}</a>
                </div>
            </div>
        </div>
    </header><!-- /header -->
    <!-- endheader -->

    <!-- main -->
    <section id="body">
        <div class="container">
            <div class="row">
                <div id="sidebar" class="col-md-3">
                    <nav id="menu">
                        <ul>
                            <li class="menu-item">Danh m???c s???n ph???m</li>
                            @foreach($categories as $cate)

                            <li class="menu-item"><a href="
                            {{asset('category/'.$cate->cate_id.'/'.$cate->cate_slug.'.html')}}" title="">{{$cate->cate_name }}</a></li>
                            @endforeach
                        </ul>
                        <!-- <a href="#" id="pull">Danh m???c</a> -->
                    </nav>

                    <div id="banner-l" class="text-center">
                        <div class="banner-l-item">
                            <a href="#"><img src="img/home/banner-l-1.png" alt="" class="img-thumbnail"></a>
                        </div>
                        <div class="banner-l-item">
                            <a href="#"><img src="img/home/banner-l-2.png" alt="" class="img-thumbnail"></a>
                        </div>
                        <div class="banner-l-item">
                            <a href="#"><img src="img/home/banner-l-3.png" alt="" class="img-thumbnail"></a>
                        </div>
                        <div class="banner-l-item">
                            <a href="#"><img src="img/home/banner-l-4.png" alt="" class="img-thumbnail"></a>
                        </div>
                        <div class="banner-l-item">
                            <a href="#"><img src="img/home/banner-l-5.png" alt="" class="img-thumbnail"></a>
                        </div>
                        <div class="banner-l-item">
                            <a href="#"><img src="img/home/banner-l-6.png" alt="" class="img-thumbnail"></a>
                        </div>
                        <div class="banner-l-item">
                            <a href="#"><img src="img/home/banner-l-7.png" alt="" class="img-thumbnail"></a>
                        </div>
                    </div>
                </div>

                <div id="main" class="col-md-9">
                    <!-- main -->
                    <!-- phan slide la cac hieu ung chuyen dong su dung jquey -->
                    <div id="slider">
                        <div id="demo" class="carousel slide" data-ride="carousel">

                            <!-- Indicators -->
                            <ul class="carousel-indicators">
                                <li data-target="#demo" data-slide-to="0" class="active"></li>
                                <li data-target="#demo" data-slide-to="1"></li>
                                <li data-target="#demo" data-slide-to="2"></li>
                            </ul>

                            <!-- The slideshow -->
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="img/home/slide-1.png" alt="Los Angeles">
                                </div>
                                <div class="carousel-item">
                                    <img src="img/home/slide-2.png" alt="Chicago">
                                </div>
                                <div class="carousel-item">
                                    <img src="img/home/slide-3.png" alt="New York">
                                </div>
                            </div>

                            <!-- Left and right controls -->
                            <a class="carousel-control-prev" href="#demo" data-slide="prev">
                                <span class="carousel-control-prev-icon"></span>
                            </a>
                            <a class="carousel-control-next" href="#demo" data-slide="next">
                                <span class="carousel-control-next-icon"></span>
                            </a>
                        </div>
                    </div>

                    <div id="banner-t" class="text-center">
                        <div class="row">
                            <div class="banner-t-item col-md-6 col-sm-12 col-xs-12">
                                <a href="#"><img src="img/home/banner-t-1.png" alt="" class="img-thumbnail"></a>
                            </div>
                            <div class="banner-t-item col-md-6 col-sm-12 col-xs-12">
                                <a href="#"><img src="img/home/banner-t-1.png" alt="" class="img-thumbnail"></a>
                            </div>
                        </div>
                    </div>

                    <!-- MAIN  -->
                    @yield('main')
                    <!-- footer -->
                    <!-- end main -->
                </div>
            </div>
        </div>
    </section>
    <!-- endmain -->

    <footer id="footer">
        <div id="footer-t">
            <div class="container">
                <div class="row">
                    <div id="logo-f" class="col-md-3 col-sm-12 col-xs-12 text-center">
                        <a href="{{asset('/')}}"><img src="img/home/logo.png"></a>
                    </div>
                    <div id="about" class="col-md-3 col-sm-12 col-xs-12">
                        <h3>About us</h3>
                        <p class="text-justify">Vietpro Academy th??nh l???p n??m 2009. Ch??ng t??i ????o t???o chuy??n s??u trong 2
                            l??nh v???c l?? L???p tr??nh Website & Mobile nh???m cung c???p cho th??? tr?????ng CNTT Vi???t Nam nh???ng l???p
                            tr??nh vi??n th???c s??? ch???t l?????ng, c?? kh??? n??ng l??m vi???c ?????c l???p, c??ng nh?? Team Work ??? m???i m??i
                            tr?????ng ????i h???i s??? chuy??n nghi???p cao.</p>
                    </div>
                    <div id="hotline" class="col-md-3 col-sm-12 col-xs-12">
                        <h3>Hotline</h3>
                        <p>Phone Sale: (+84) 0988 550 553</p>
                        <p>Email: sirtuanhoang@gmail.com</p>
                    </div>
                    <div id="contact" class="col-md-3 col-sm-12 col-xs-12">
                        <h3>Contact Us</h3>
                        <p>Address 1: B8A V?? V??n D??ng - Ho??ng C???u ?????ng ??a - H?? N???i</p>
                        <p>Address 2: S??? 25 Ng?? 178/71 - T??y S??n ?????ng ??a - H?? N???i</p>
                    </div>
                </div>
            </div>
            <div id="footer-b">
                <div class="container">
                    <div class="row">
                        <div id="footer-b-l" class="col-md-6 col-sm-12 col-xs-12 text-center">
                            <p>H???c vi???n C??ng ngh??? Vietpro - www.vietpro.edu.vn</p>
                        </div>
                        <div id="footer-b-r" class="col-md-6 col-sm-12 col-xs-12 text-center">
                            <p>?? 2017 Vietpro Academy. All Rights Reserved</p>
                        </div>
                    </div>
                </div>
                <div id="scroll">
                    <a href="#"><img src="img/home/scroll.png"></a>
                </div>
            </div>
        </div>
    </footer>
    <!-- endfooter -->
</body>

</html>