<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
                    <h3><span>MAIN /</span> MENU</h3>
                </div>
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end page-header -->

    <section class="section">
        <div class="container">
            <div class="row menu-widget">
                <div class="col-sm-12 col-md-3">
                    <div class="menu-links clearfix text-center">
                        <nav>
                          <ul class="nav nav-pills nav-stacked span2">
                            <li><h3>음료 종류</h3></li>
                            <li><a href="#">Espresso & House specialty</a></li>
                            <li><a href="#">Classics</a></li>
                            <li><a href="#">Frozen Drinks</a></li>
                          </ul>
                        </nav>
                    </div><!-- end menu-links -->
                </div><!-- end col -->
				
				<%-- <c:forEach var="fashion" items="${fashionLists}">
					<c:set var="pagingParam" value="&id=${fashion.id}&pageNumber=${pageInfo.pageNumber}&pageSize=${pageInfo.pageSize}" />
					<c:set var="replyParam" value="&groupno=${fashion.groupno}&orderno=${fashion.orderno}&depth=${fashion.depth}" />
					<tr class="record">
						<td>${fashion.id}</td>
						<td>
							<a href= "<%=myReplyForm%>${pagingParam}${replyParam}">
								<c:forEach begin="1" end="${fashion.depth}" step="1">
									re:&nbsp;
								</c:forEach>
								${fashion.name }
							</a>
						</td>
						
						<td>
						<a href="#" onclick="javascript:open_win('<%=myChkPwdFrm%>${pagingParam}','update')"></a>
							${fashion.category}
						</td>
						<td>
							<a href= "<%=myReplyForm%>${pagingParam}${replyParam}">
								${fashion.name }
							</a>
						</td>
						<td>
							<input type="button" value="삭제"
							 onclick="javascript:open_win('<%=myChkPwdFrm%>${pagingParam}','delete')">
						
						</td>
						<td>${fashion.readcount}</td>
					</tr>
				</c:forEach> --%>
				
                <div class="col-sm-12 col-md-9">
                    <div class="menu-links-big">
                        <div class="menu-item">
                            <img src="upload/menu_item_01.jpg" alt="" class="img-thumbnail shadow alignleft">
                            <h3>Summer salad</h3>
                            <p>맛있슴메</p>
                            <div class="price">$12.33</div>
                        </div><!-- end item -->

                        <div class="menu-item">
                            <img src="upload/menu_item_02.jpg" alt="" class="img-thumbnail shadow alignleft">
                            <h3>Friday salad</h3>
                            <p>맛있슴메</p>
                            <div class="price">$41.22</div>
                        </div><!-- end item -->

                        <div class="menu-item">
                            <img src="upload/menu_item_03.jpg" alt="" class="img-thumbnail shadow alignleft">
                            <h3>Greek salad</h3>
                            <p>맛있슴메</p>
                            <div class="price">$55.12</div>
                        </div><!-- end item -->

                        <div class="menu-item">
                            <img src="upload/menu_item_04.jpg" alt="" class="img-thumbnail shadow alignleft">
                            <h3>Strawberry salad</h3>
                            <p>맛있슴메</p>
                            <div class="price">$45.03</div>
                        </div><!-- end item -->

                        <div class="menu-item">
                            <img src="upload/menu_item_05.jpg" alt="" class="img-thumbnail shadow alignleft">
                            <h3>Fruit salad</h3>
                            <p>맛있슴메</p>
                            <div class="price">$11.24</div>
                        </div><!-- end item -->

                        <div class="menu-item">
                            <img src="upload/menu_item_06.jpg" alt="" class="img-thumbnail shadow alignleft">
                            <h3>Eggs salad</h3>
                            <p>맛있슴메</p>
                            <div class="price">$10.90</div>
                        </div><!-- end item -->

                        <div class="menu-item">
                            <img src="upload/menu_item_07.jpg" alt="" class="img-thumbnail shadow alignleft">
                            <h3>Monday salad</h3>
                            <p>맛있슴메</p>
                            <div class="price">$13.23</div>
                        </div><!-- end item -->

                        <div class="menu-item">
                            <img src="upload/menu_item_08.jpg" alt="" class="img-thumbnail shadow alignleft">
                            <h3>Vanilla Ice salad</h3>
                            <p>맛있슴메</p>
                            <div class="price">$22.53</div>
                        </div><!-- end item -->

                        <div class="menu-item">
                            <img src="upload/menu_item_09.jpg" alt="" class="img-thumbnail shadow alignleft">
                            <h3>Rome salad</h3>
                            <p>맛있슴메</p>
                            <div class="price">$122.31</div>
                        </div><!-- end item -->

                        <div class="menu-item">
                            <img src="upload/menu_item_10.jpg" alt="" class="img-thumbnail shadow alignleft">
                            <h3>Custom salad</h3>
                            <p>맛있슴메</p>
                            <div class="price">$32.33</div>
                        </div><!-- end item -->

                        <nav>
                            <ul class="pager">
                                <li class="pull-left"><a href="#">Prev</a></li>
                                <li class="pull-right"><a href="#">Next</a></li>
                            </ul>
                        </nav>
                    </div><!-- end big -->
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