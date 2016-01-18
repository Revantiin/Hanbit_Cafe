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
    <jsp:include page="header.jsp"></jsp:include>

    <article class="slider-wrapper">
        <div class="tp-banner-container">
            <div class="tp-banner">
                <ul>
                    <li data-transition="slideup" data-slotamount="3" data-masterspeed="1000" data-thumb="upload/slider_01.jpg"  data-saveperformance="off"  data-title="Coffee Slider">
                        <img src="images/dummy.png"  alt="" data-lazyload="upload/slider_01.jpg" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat">
                        <div class="tp-caption slider_01 skewfromright randomrotateout tp-resizeme"
                            data-x="center"
                            data-y="360" 
                            data-speed="1000"
                            data-start="1200"
                            data-easing="Power3.easeInOut"
                            data-splitin="none"
                            data-splitout="none"
                            data-elementdelay="0.1"
                            data-endelementdelay="0.1"
                            data-endspeed="1000"
                            style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;">맛있는 커피
                        </div>
                        <div class="tp-caption slider_02 skewfromright randomrotateout tp-resizeme"
                            data-x="center"
                            data-y="440" 
                            data-speed="1000"
                            data-start="1600"
                            data-easing="Power3.easeInOut"
                            data-splitin="none"
                            data-splitout="none"
                            data-elementdelay="0.1"
                            data-endelementdelay="0.1"
                            data-endspeed="1000"
                            style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;">어마어마한 향을 <br> 느껴보세요오
                        </div>
                    </li>
                    <li data-transition="slideup" data-slotamount="3" data-masterspeed="1000" data-thumb="upload/slider_02.jpg"  data-saveperformance="off"  data-title="Coffee Slider">
                        <img src="images/dummy.png"  alt="" data-lazyload="upload/slider_02.jpg" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat">
                        <div class="tp-caption slider_01 skewfromright randomrotateout tp-resizeme"
                            data-x="center"
                            data-y="360" 
                            data-speed="1000"
                            data-start="1200"
                            data-easing="Power3.easeInOut"
                            data-splitin="none"
                            data-splitout="none"
                            data-elementdelay="0.1"
                            data-endelementdelay="0.1"
                            data-endspeed="1000"
                            style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;">커피 외에도
                        </div>
                        <div class="tp-caption slider_02 skewfromright randomrotateout tp-resizeme"
                            data-x="center"
                            data-y="440" 
                            data-speed="1000"
                            data-start="1600"
                            data-easing="Power3.easeInOut"
                            data-splitin="none"
                            data-splitout="none"
                            data-elementdelay="0.1"
                            data-endelementdelay="0.1"
                            data-endspeed="1000"
                            style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;">다양한 음료가 있습니다
                        </div>
                    </li>
                </ul>   
            </div>
        </div>  
    </article>

    <svg class="clouds white" xmlns="http://www.w3.org/2000/svg" version="1.1" width="100%" height="100" viewBox="0 0 100 98" preserveAspectRatio="none">
        <path d="M-5 100 Q 0 20 5 100 Z
            M0 100 Q 5 0 10 100
            M5 100 Q 10 30 15 100
            M10 100 Q 15 10 20 100
            M15 100 Q 20 30 25 100
            M20 100 Q 25 -10 30 100
            M25 100 Q 30 10 35 100
            M30 100 Q 35 30 40 100
            M35 100 Q 40 10 45 100
            M40 100 Q 45 50 50 100
            M45 100 Q 50 20 55 100
            M50 100 Q 55 40 60 100
            M55 100 Q 60 60 65 100
            M60 100 Q 65 50 70 100
            M65 100 Q 70 20 75 100
            M70 100 Q 75 45 80 100
            M75 100 Q 80 30 85 100
            M80 100 Q 85 20 90 100
            M85 100 Q 90 50 95 100
            M90 100 Q 95 25 100 100
            M95 100 Q 100 15 105 100 Z">
        </path>
    </svg>

    <section class="section">
        <div class="container">
            <div class="section-title text-center">
                <h3 class="light">Menu of week</h3>
            </div><!-- end section-title -->

            <div class="row menu-of-week">
                <div class="col-md-6 menu-items">
                    <div class="menu-item row shadow clearfix">
                        <div class="box col-md-6 wow fadeInLeft">
                            <a href="menu.jsp" title=""><img src="upload/menu_01.jpg" class="alignleft" alt=""></a>
                        </div>
                        <div class="menu-text col-md-6">
                            <h3><a href="menu.jsp" title="">카페 모카</a></h3>
                            <p>일단 합 잡숴봐</p>
                            <h4>가격 : <span>무지 비쌈</span></h4>
                        </div>
                    </div><!-- end menu-item -->
                </div><!-- end col -->

                <div class="col-md-6 menu-items">
                    <div class="menu-item row shadow clearfix">
                        <div class="box col-md-6 wow fadeInRight">
                            <a href="menu.jsp" title=""><img src="upload/menu_02.jpg" class="alignleft" alt=""></a>
                        </div>
                        <div class="menu-text col-md-6">
                            <h3><a href="menu.jsp" title="">카페 라떼</a></h3>
                            <p>일단 합 잡숴봐</p>
                            <h4>가격 : <span>무지 비쌈</span></h4>
                        </div>
                    </div><!-- end menu-item -->
                </div><!-- end col -->

                <div class="col-md-6 menu-items">
                    <div class="menu-item row shadow clearfix">
                        <div class="box col-md-6 wow fadeInLeft">
                            <a href="menu.jsp" title=""><img src="upload/menu_03.jpg" class="alignleft" alt=""></a>
                        </div>
                        <div class="menu-text col-md-6">
                            <h3><a href="menu.jsp" title="">아메리카노</a></h3>
                            <p>일단 합 잡숴봐</p>
                            <h4>가격 : <span>무지 비쌈</span></h4>
                        </div>
                    </div><!-- end menu-item -->
                </div><!-- end col -->

                <div class="col-md-6 menu-items">
                    <div class="menu-item row shadow clearfix">
                        <div class="box col-md-6 wow fadeInRight">
                            <a href="menu.jsp" title=""><img src="upload/menu_04.jpg" class="alignleft" alt=""></a>
                        </div>
                        <div class="menu-text col-md-6">
                            <h3><a href="menu.jsp" title="">프로즌 드링크</a></h3>
                            <p>일단 합 잡숴봐</p>
                            <h4>가격 : <span>무지 비쌈</span></h4>
                        </div>
                    </div><!-- end menu-item -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </section><!-- end section -->

    <svg class="clouds white" xmlns="http://www.w3.org/2000/svg" version="1.1" width="100%" height="100" viewBox="0 0 100 98" preserveAspectRatio="none">
        <path d="M-5 100 Q 0 20 5 100 Z
            M0 100 Q 5 0 10 100
            M5 100 Q 10 30 15 100
            M10 100 Q 15 10 20 100
            M15 100 Q 20 30 25 100
            M20 100 Q 25 -10 30 100
            M25 100 Q 30 10 35 100
            M30 100 Q 35 30 40 100
            M35 100 Q 40 10 45 100
            M40 100 Q 45 50 50 100
            M45 100 Q 50 20 55 100
            M50 100 Q 55 40 60 100
            M55 100 Q 60 60 65 100
            M60 100 Q 65 50 70 100
            M65 100 Q 70 20 75 100
            M70 100 Q 75 45 80 100
            M75 100 Q 80 30 85 100
            M80 100 Q 85 20 90 100
            M85 100 Q 90 50 95 100
            M90 100 Q 95 25 100 100
            M95 100 Q 100 15 105 100 Z">
        </path>
    </svg>

    <section class="section section-bg">
        <div class="container">
            <div class="section-title text-center">
                <h3>Who are we</h3>
            </div><!-- end section-title -->

            <div class="row our-personal">
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="our-personal-box">
                        <img src="upload/personal_01.jpg" alt="" class="img-circle wow fadeInLeft img-thumbnail alignleft">
                        <h3>Joseph Changgon Cho</h3>
                        <small>Developer</small>
                        <p>장곤짜응</p>
                        <ul class="list-inline">
                            <li><a href="#" title=""><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#" title=""><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#" title=""><i class="fa fa-skype"></i></a></li>
                        </ul>
                    </div><!-- end our-personal-box -->
                </div><!-- end col -->
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="our-personal-box">
                    <img src="upload/personal_02.jpg" alt="" class="img-circle wow fadeInLeft img-thumbnail alignleft">
                    <h3>Cheyun Lim</h3>
                    <small>Developer</small>
                    <p>채윤짜응</p>
                    <ul class="list-inline">
                        <li><a href="#" title=""><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#" title=""><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#" title=""><i class="fa fa-skype"></i></a></li>
                    </ul>
                    </div><!-- end our-personal-box -->
                </div><!-- end col -->
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="our-personal-box">
                    <img src="upload/personal_03.jpg" alt="" class="img-circle wow fadeInLeft img-thumbnail alignleft">
                    <h3>Minsung Kim</h3>
                    <small>Developer</small>
                    <p>민성짜응</p>
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

    <svg class="clouds white" xmlns="http://www.w3.org/2000/svg" version="1.1" width="100%" height="100" viewBox="0 0 100 98" preserveAspectRatio="none">
        <path d="M-5 100 Q 0 20 5 100 Z
            M0 100 Q 5 0 10 100
            M5 100 Q 10 30 15 100
            M10 100 Q 15 10 20 100
            M15 100 Q 20 30 25 100
            M20 100 Q 25 -10 30 100
            M25 100 Q 30 10 35 100
            M30 100 Q 35 30 40 100
            M35 100 Q 40 10 45 100
            M40 100 Q 45 50 50 100
            M45 100 Q 50 20 55 100
            M50 100 Q 55 40 60 100
            M55 100 Q 60 60 65 100
            M60 100 Q 65 50 70 100
            M65 100 Q 70 20 75 100
            M70 100 Q 75 45 80 100
            M75 100 Q 80 30 85 100
            M80 100 Q 85 20 90 100
            M85 100 Q 90 50 95 100
            M90 100 Q 95 25 100 100
            M95 100 Q 100 15 105 100 Z">
        </path>
    </svg>

    <section class="section">
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
                        <p>어마어마한 원두를..</p>
                    </div><!-- end service-box -->
                </div><!-- end col -->

                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-box text-center">
                        <div class="service-img wow fadeInUp">
                            <img src="images/icon_02.png" alt="">
                        </div>
                        <h3>Fast service</h3>
                        <p>초스피드로 볶아서..</p>
                    </div><!-- end service-box -->
                </div><!-- end col -->

                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-box text-center">
                        <div class="service-img wow fadeInUp">
                            <img src="images/icon_03.png" alt="">
                        </div>
                        <h3>Good menu</h3>
                        <p>호롤롤로하게 내려서..</p>
                    </div><!-- end service-box -->
                </div><!-- end col -->

                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-box last text-center">
                        <div class="service-img wow fadeInUp">
                            <img src="images/icon_04.png" alt="">
                        </div>
                        <h3>Just good</h3>
                        <p>가져다 드려요..</p>
                    </div><!-- end service-box -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </section><!-- end section -->

    <svg class="clouds white" xmlns="http://www.w3.org/2000/svg" version="1.1" width="100%" height="100" viewBox="0 0 100 98" preserveAspectRatio="none">
        <path d="M-5 100 Q 0 20 5 100 Z
            M0 100 Q 5 0 10 100
            M5 100 Q 10 30 15 100
            M10 100 Q 15 10 20 100
            M15 100 Q 20 30 25 100
            M20 100 Q 25 -10 30 100
            M25 100 Q 30 10 35 100
            M30 100 Q 35 30 40 100
            M35 100 Q 40 10 45 100
            M40 100 Q 45 50 50 100
            M45 100 Q 50 20 55 100
            M50 100 Q 55 40 60 100
            M55 100 Q 60 60 65 100
            M60 100 Q 65 50 70 100
            M65 100 Q 70 20 75 100
            M70 100 Q 75 45 80 100
            M75 100 Q 80 30 85 100
            M80 100 Q 85 20 90 100
            M85 100 Q 90 50 95 100
            M90 100 Q 95 25 100 100
            M95 100 Q 100 15 105 100 Z">
        </path>
    </svg>
    
    <svg class="clouds white" xmlns="http://www.w3.org/2000/svg" version="1.1" width="100%" height="100" viewBox="0 0 100 98" preserveAspectRatio="none">
        <path d="M-5 100 Q 0 20 5 100 Z
            M0 100 Q 5 0 10 100
            M5 100 Q 10 30 15 100
            M10 100 Q 15 10 20 100
            M15 100 Q 20 30 25 100
            M20 100 Q 25 -10 30 100
            M25 100 Q 30 10 35 100
            M30 100 Q 35 30 40 100
            M35 100 Q 40 10 45 100
            M40 100 Q 45 50 50 100
            M45 100 Q 50 20 55 100
            M50 100 Q 55 40 60 100
            M55 100 Q 60 60 65 100
            M60 100 Q 65 50 70 100
            M65 100 Q 70 20 75 100
            M70 100 Q 75 45 80 100
            M75 100 Q 80 30 85 100
            M80 100 Q 85 20 90 100
            M85 100 Q 90 50 95 100
            M90 100 Q 95 25 100 100
            M95 100 Q 100 15 105 100 Z">
        </path>
    </svg>
    
    <svg class="clouds white" xmlns="http://www.w3.org/2000/svg" version="1.1" width="100%" height="100" viewBox="0 0 100 98" preserveAspectRatio="none">
        <path d="M-5 100 Q 0 20 5 100 Z
            M0 100 Q 5 0 10 100
            M5 100 Q 10 30 15 100
            M10 100 Q 15 10 20 100
            M15 100 Q 20 30 25 100
            M20 100 Q 25 -10 30 100
            M25 100 Q 30 10 35 100
            M30 100 Q 35 30 40 100
            M35 100 Q 40 10 45 100
            M40 100 Q 45 50 50 100
            M45 100 Q 50 20 55 100
            M50 100 Q 55 40 60 100
            M55 100 Q 60 60 65 100
            M60 100 Q 65 50 70 100
            M65 100 Q 70 20 75 100
            M70 100 Q 75 45 80 100
            M75 100 Q 80 30 85 100
            M80 100 Q 85 20 90 100
            M85 100 Q 90 50 95 100
            M90 100 Q 95 25 100 100
            M95 100 Q 100 15 105 100 Z">
        </path>
    </svg>
	
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