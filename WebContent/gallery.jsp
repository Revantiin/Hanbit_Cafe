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
                    <h3><span>MAIN /</span> GALLERY</h3>
                </div>
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end page-header -->

    <section class="section">
        <div class="container">
            <div class="row masonry-container">
                <div class="col-md-3 col-sm-6 item">
                    <div class="gallery-item entry">
                            <img src="upload/masonry_01.png" alt="" class="img-responsive">
                            <div class="magnifier">
                                <div class="buttons">
                                    <h3><a data-gal="prettyPhoto[product-gallery]" rel="bookmark" href="upload/masonry_01.png">MY CONVERSE</a></h3>
                                </div>
                            </div>
                    </div><!-- end gallery-item entry -->
                </div><!--/.item  -->

                <div class="col-md-6 col-sm-6 item">
                    <div class="gallery-item entry">
                            <img src="upload/masonry_02.png" alt="" class="img-responsive">
                            <div class="magnifier">
                                <div class="buttons">
                                    <h3><a data-gal="prettyPhoto[product-gallery]" rel="bookmark" href="upload/masonry_02.png">OUR OFFICE 2015</a></h3>
                                </div>
                            </div>
                    </div><!-- end gallery-item entry -->
                </div><!--/.item  -->

                <div class="col-md-3 col-sm-6 item">
                    <div class="gallery-item entry">
                            <img src="upload/masonry_04.png" alt="" class="img-responsive">
                            <div class="magnifier">
                                <div class="buttons">
                                    <h3><a data-gal="prettyPhoto[product-gallery]" rel="bookmark" href="upload/masonry_04.png">DRINK DRUNK</a></h3>
                                </div>
                            </div>
                    </div><!-- end gallery-item entry -->
                </div><!--/.item  -->

                <div class="col-md-3 col-sm-6 item">
                    <div class="gallery-item entry">
                            <img src="upload/masonry_03.png" alt="" class="img-responsive">
                            <div class="magnifier">
                                <div class="buttons">
                                    <h3><a data-gal="prettyPhoto[product-gallery]" rel="bookmark" href="upload/masonry_03.png">PIZZA</a></h3>
                                </div>
                            </div>
                    </div><!-- end gallery-item entry -->
                </div><!--/.item  -->

                <div class="col-md-6 col-sm-6 item">
                    <div class="gallery-item entry">
                            <img src="upload/masonry_06.png" alt="" class="img-responsive">
                            <div class="magnifier">
                                <div class="buttons">
                                    <h3><a data-gal="prettyPhoto[product-gallery]" rel="bookmark" href="upload/masonry_06.png">GO TO PARTY</a></h3>
                                </div>
                            </div>
                    </div><!-- end gallery-item entry -->
                </div><!--/.item  -->

                <div class="col-md-3 col-sm-6 item">
                    <div class="gallery-item entry">
                            <img src="upload/masonry_05.png" alt="" class="img-responsive">
                            <div class="magnifier">
                                <div class="buttons">
                                    <h3><a data-gal="prettyPhoto[product-gallery]" rel="bookmark" href="upload/masonry_05.png">I AM HUNGRY</a></h3>
                                </div>
                            </div>
                    </div><!-- end gallery-item entry -->
                </div><!--/.item  -->
            </div> <!--/.masonry-container  -->
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