<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Hanbit Cafe</title>

    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png" />

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/flexslider.css" rel="stylesheet">
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">

    <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
    <link href="rs-plugin/css/settings.css" rel="stylesheet">

    <link href="style.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/custom.css" rel="stylesheet">
    
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>

<div id="loader">
    <div class="loader-container">
        <h3 class="loader-back-text"><img src="images/loader.gif" alt="" class="loader"></h3>
    </div>
</div>

<div id="wrapper">

    <jsp:include page="inner_header.jsp"></jsp:include>

    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h3><span>MAIN /</span> ABOUT US</h3>
                </div>
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end page-header -->

    <section class="section">
        <div class="container">
            <div class="row about-us-widget">
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <img src="upload/about_01.jpg" alt="" class="img-responsive img-thumbnail shadow">
                    <h3>Sinle 2000</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua! Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                </div><!-- end col -->

                <div class="col-md-8 col-sm-8 col-xs-12">
                    <div class="timeline-widget">
                        <div class="timeline">
                            <h3>2000 year </h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.</p>
                        </div><!-- end timeline -->
                        <div class="timeline">
                            <h3>Sisne 2005 </h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.</p>
                        </div><!-- end timeline -->
                        <div class="timeline last">
                            <h3>Present days </h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.</p>
                        </div><!-- end timeline -->
                    </div><!-- end timeline -->
                </div><!-- end col -->           
            </div><!-- end row -->
        </div><!-- end container -->
    </section><!-- end section -->

    <section class="section greybg">
        <div class="container">
            <div class="section-title text-center">
                <h3 class="light">What People Say</h3>
            </div><!-- end section-title -->
            <div class="clients">
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="home">
                        <div class="testibox">
                            <img src="upload/master_sul.png" alt="" class="img-circle shadow img-thumbnail alignleft">
                            <div class="testidesc shadow">
                                <h3>마스터 설</h3>
                                <p>May the Force be with you!!!</p>
                                <small>Master Sul (22 01 2016)</small>
                            </div>
                        </div><!-- end our-personal-box -->
                    </div>
                </div>
            </div><!-- end row -->
        </div><!-- end container -->
    </section><!-- end section -->

    <section class="section">
        <div class="container">
            <div class="section-title text-center">
                <h3 class="light">Our Numbers</h3>
            </div><!-- end section-title -->

            <div class="row numbers text-center">
                <div class="col-md-3 col-sm-6 number-widget">
                    <div class="number">
                        <h3 class="stat-count">99</h3>
                    </div>
                    <h3>Happy clients</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.</p>
                </div><!-- end col -->

                <div class="col-md-3 col-sm-6 number-widget">
                    <div class="number">
                        <h3 class="stat-count">75</h3>
                    </div>
                    <h3>Peoples in personal</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.</p>
                </div><!-- end col -->

                <div class="col-md-3 col-sm-6 number-widget">
                    <div class="number">
                        <h3 class="stat-count">52</h3>
                    </div>
                    <h3>Foodâs in menu</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.</p>
                </div><!-- end col -->

                <div class="col-md-3 col-sm-6 number-widget last">
                    <div class="number">
                        <h3 class="stat-count">25</h3>
                    </div>
                    <h3>Coffee in menu</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.</p>
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </section><!-- end section -->

    <section class="section greybg">
        <div class="container">
            <div class="section-title text-center">
                <h3 class="light">Why We?</h3>
            </div><!-- end section-title -->

            <div class="row why-we-are">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-box text-center">
                        <div class="service-img wow fadeInUp">
                            <img src="images/icon_01.png" alt="">
                        </div>
                        <h3>Best coffee</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.</p>
                    </div><!-- end service-box -->
                </div><!-- end col -->

                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-box text-center">
                        <div class="service-img wow fadeInUp">
                            <img src="images/icon_02.png" alt="">
                        </div>
                        <h3>Fast service</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.</p>
                    </div><!-- end service-box -->
                </div><!-- end col -->

                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-box text-center">
                        <div class="service-img wow fadeInUp">
                            <img src="images/icon_03.png" alt="">
                        </div>
                        <h3>Good menu</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.</p>
                    </div><!-- end service-box -->
                </div><!-- end col -->

                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-box last text-center">
                        <div class="service-img wow fadeInUp">
                            <img src="images/icon_04.png" alt="">
                        </div>
                        <h3>Just good</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.</p>
                    </div><!-- end service-box -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </section><!-- end section -->

    <section class="section">
        <div class="container">
            <div class="section-title text-center">
                <h3 class="light">Our personal</h3>
            </div><!-- end section-title -->

            <div class="row our-personal">
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="our-personal-box">
                        <img src="upload/personal_01.jpg" alt="" class="img-circle shadow wow fadeInLeft img-thumbnail alignleft">
                        <h3>James Ford</h3>
                        <small>Waiter</small>
                        <p>Lorem ipsum dolor sit amet!</p>
                        <ul class="list-inline">
                            <li><a href="#" title=""><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#" title=""><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#" title=""><i class="fa fa-skype"></i></a></li>
                        </ul>
                    </div><!-- end our-personal-box -->
                </div><!-- end col -->
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="our-personal-box">
                    <img src="upload/personal_02.jpg" alt="" class="img-circle wow shadow fadeInLeft img-thumbnail alignleft">
                    <h3>Matthew Fox</h3>
                    <small>Waiter</small>
                    <p>Lorem ipsum dolor sit amet!</p>
                    <ul class="list-inline">
                        <li><a href="#" title=""><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#" title=""><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#" title=""><i class="fa fa-skype"></i></a></li>
                    </ul>
                    </div><!-- end our-personal-box -->
                </div><!-- end col -->
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="our-personal-box">
                    <img src="upload/personal_03.jpg" alt="" class="img-circle wow shadow fadeInLeft img-thumbnail alignleft">
                    <h3>Mick Ceng</h3>
                    <small>Barman</small>
                    <p>Lorem ipsum dolor sit amet!</p>
                    <ul class="list-inline">
                        <li><a href="#" title=""><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#" title=""><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#" title=""><i class="fa fa-skype"></i></a></li>
                    </ul>
                    </div><!-- end our-personal-box -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </section><!-- end section -->

    <jsp:include page="footer.jsp"></jsp:include>

</div><!-- end wrapper -->
        
    <!-- Template core JavaScript's
    ================================================== -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/wow.js"></script>
    <script src="js/retina.js"></script>
    <script src="js/imagesLoaded.js"></script>
    <script src="js/masonry.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="rs-plugin/js/jquery.themepunch.tools.min.js"></script>   
    <script src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
    <script src="js/custom.js"></script>
    <script src="js/contact.js"></script>

</body>
</html>