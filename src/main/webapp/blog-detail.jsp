<%@ page import="vn.edu.hcmuaf.fit.sevice.BlogService" %>
<%@ page import="vn.edu.hcmuaf.fit.model.Blog_detail" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Wealthuring | Tin Tức</title>

    <!-- Favicon -->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">

    <!-- Font awesome -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <!-- slick slider -->
    <link rel="stylesheet" type="text/css" href="css/slick.css">
    <!-- price picker slider -->
    <link rel="stylesheet" type="text/css" href="css/nouislider.css">
    <!-- Fancybox slider -->
    <link rel="stylesheet" href="css/jquery.fancybox.css" type="text/css" media="screen"/>
    <!-- Theme color -->
    <link id="switcher" href="css/theme-color/default-theme.css" rel="stylesheet">


    <!-- Main style sheet -->
    <%
        String url=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath();
    %>
    <link rel="stylesheet" href="<%=url%>/css/style.css">


    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Vollkorn' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>
<body>

<!-- Pre Loader -->
<div id="aa-preloader-area">
    <div class="pulse"></div>
</div>
<!-- SCROLL TOP BUTTON -->
<a class="scrollToTop" href="#"><i class="fa fa-angle-double-up"></i></a>
<!-- END SCROLL TOP BUTTON -->


<%--<!-- Start header and menu section -->--%>
<jsp:include page="header.jsp" />
<%--<!-- End header and menu section -->--%>


<!-- Start Proerty header  -->
<section id="aa-property-header">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-property-header-inner">
                    <h2>Tin Tức</h2>
                    <ol class="breadcrumb">
                        <li><a href="index.jsp">Trang chủ</a></li>
                        <li class="active"><a href="blog_archive.jsp">Tin tức</a></li>
                        <li class="active">Sức hút của thị trường BĐS Duy Tiên và cơ hội cho giới địa ốc</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Proerty header  -->

<%
    BlogService bs = new BlogService();
    List<Blog_detail> list2 = bs.getListBlogDetail(request.getParameter("id_blog"));
%>

<!-- Start Blog  -->
<section id="aa-blog">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-blog-area">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="aa-blog-content">
                                <div class="row">
                                    <div class="col-md-12">
                                        <article class="aa-blog-single aa-blog-details">
                                            <% for (Blog_detail bd : list2) { %>
                                            <figure class="aa-blog-img">
                                                <a href="#"><img alt="img" src="<%= bd.getImg_1()%>>"></a>
                                            </figure>
                                            <div class="aa-blog-single-content">
                                                <h2><%=bd.getTitle()%>></h2>
                                                <!-- <div class="aa-blog-single-bottom">
                                                  <a class="aa-blog-author" href="#"><i class="fa fa-user"></i> Admin</a>
                                                  <a class="aa-blog-comments" href="#"><i class="fa fa-comment-o"></i>6</a>
                                                </div> -->
                                                <p><strong><%=bd.getSubtitle()%>></strong></p>
                                                <%--                          <p><strong>“Hấp lực” của thị trường bất động sản Duy Tiên</strong></p>          --%>
                                                <%--                          <p>Nằm ở cửa ngõ phía Nam của Hà Nội, thị xã Duy Tiên được coi là đầu mối giao thông quan trọng, nơi có tuyến đường sắt Bắc - Nam, quốc lộ 1A, quốc lộ 38, kết nối giữa Hà Nội - Phủ Lý, Hưng Yên - Hà Nam… Bên cạnh đó còn có đường cao tốc Cầu Giẽ - Ninh Bình, đường thuỷ tuyến sông Nhuệ - sông Châu Giang, tạo điều kiện di chuyển dễ dàng đến các tỉnh, thành lân cận, tạo liên kết vùng hoàn hảo.--%>
                                                <%--                            Với các ưu thế về địa lý, tự nhiên, môi trường kinh tế và văn hoá, xã hội cũng như sự hỗ trợ của chính quyền địa phương, Duy Tiên đang mạnh mẽ vươn lên, trở thành điểm đến “sáng giá” cho các nhà đầu tư.--%>
                                                <%--                            Những năm gần đây, thị xã Duy Tiên đang chú trọng công tác quy hoạch, tập trung nguồn lực để chỉnh trang, hoàn thiện hạ tầng giao thông, chuyển hướng sang đẩy mạnh và phát triển về công nghiệp, thương nghiệp và dịch vụ, mục tiêu là đến năm 2025 cơ bản hoàn thành các chỉ tiêu, tiêu chí đô thị loại III, tỷ lệ đô thị hóa đạt 65%.--%>
                                                <%--                          </p>--%>
                                                <p><%=bd.getContent()%>
                                                </p>
                                                <figure class="aa-blog-img">
                                                    <a href="#"><img alt="img" src="<%=bd.getImg_2()%>>"></a>
                                                    <span>Duy Tiên đang thu hút mạnh mẽ các “ông lớn” đầu tư bất động sản </span>
                                                </figure>
                                                <%--                          <p>Cụ thể, Duy Tiên đã phê duyệt 6 dự án cơ sở hạ tầng giao thông khung với chiều dài gần 16 km, 2 dự án đang trình chấp thuận chủ trương. Ngoài các tuyến cao tốc hiện có, thị xã cũng đầu tư xây mới 1 số tuyến giao thông quan trọng: tuyến đường vành đai V vùng Thủ đô Hà Nội; đoạn tuyến tránh QL38 về phía Bắc; tuyến trục QL37B, kết nối Hưng Yên - Duy Tiên - Phủ Lý - Bình Lục - Nam Định…--%>

                                                <%--                            Bên cạnh đó, Duy Tiên đầu tư hệ thống hạ tầng kỹ thuật tại 4 khu công nghiệp với diện tích 972 ha và 3 cụm công nghiệp với diện tích 84 ha, nhằm thu hút đầu tư từ doanh nghiệp. Hiện trên địa bàn thị xã có khoảng 300 doanh nghiệp đang hoạt động, giải quyết việc làm cho 7 vạn lao động, 1 nửa trong số đó là người địa phương. Tỷ lệ lấp đầy các khu, cụm công nghiệp đạt tới mức 88%.--%>
                                                <%--                            --%>
                                                <%--                            Không gian đô thị cũng được mở rộng thêm, dự kiến năm 2030 sẽ đạt khoảng 262.000 người.--%>
                                                <%--                            --%>
                                                <%--                            Đây chính là tiền đề mạnh mẽ cho bất động sản Duy Tiên khởi sắc, thu hút đầu tư, quy tụ nhiều dự án khác nhau. Trong đó điển hình phải kể đến Kosy Lita Hà Nam của tập đoàn Kosy Group.</p>--%>
                                                <%--                          <p><strong>Kosy Lita Ha Nam – Điểm sáng đầu tư, an cư thịnh vượng</strong></p>--%>
                                                <%--                            <figure class="aa-blog-img">--%>
                                                <%--                              <a href="#"><img alt="img" src="https://cenhomesvn.s3.ap-southeast-1.amazonaws.com/2022/10/1665366308-anh-3-kosy-lita-ha-nam.jpg"></a>--%>
                                                <%--                              <span>Toàn cảnh khu đô thị Kosy Lita Hà Nam </span>--%>
                                                <%--                            </figure>--%>
                                                <%--                          <p>Khu đô thị Kosy Lita Hà Nam sở hữu vị trí đắt giá trên mặt đường quốc lộ 38 thuộc Thị xã Duy Tiên, tỉnh Hà Nam, kết nối trực tiếp với Quốc lộ 1A. Từ dự án chỉ mất 5 phút là đến địa phận Hà Nội, giao thông đi lại dễ dàng. Bên cạnh đó, dự án còn nằm kề cận với 4 khu công nghiệp Đồng Văn, tỷ lệ lấp đầy trên 80%...--%>

                                                <%--                            Được kiến tạo với những tiện ích đồng bộ độc đáo, Kosy Lita Ha Nam còn là một địa điểm an cư lý tưởng, nơi con người được chăm sóc chu đáo về sức khỏe, cho đến trải nghiệm, giải trí…v.v… --%>
                                                <%--                            --%>
                                                <%--                            Dự án được đầu tư xây dựng hệ sinh thái vượt trội với hơn 20 tiện ích cao cấp, có thể kể đến như: Trung tâm thương mại, đại lộ thương mại The Sun rộng 28m, clubhouse, khu vui chơi trẻ em, công viên ánh sáng Light Park, hồ điều hoà Star Lake 4.000m2, đường dạo bộ ven kênh The Moon…</p>                          --%>

                                            </div>
                                        </article>
                                        <%}%>

                                    </div>
                                    <!-- Post tags -->
                                    <div class="col-md-12">
                                        <div class="aa-blog-post-tag">
                                            <ul>
                                                <li>Thẻ:</li>
                                                <li><a href="#">Sức hút,</a></li>
                                                <li><a href="#">Căn hộ,</a></li>
                                                <li><a href="#">Đầu tư,</a></li>
                                                <li><a href="#">Bất động sản,</a></li>
                                                <li><a href="#">Địa ốc</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- Social Share -->
                                    <div class="col-md-12">
                                        <div class="aa-properties-social">
                                            <ul>
                                                <li>Chia Sẻ</li>
                                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- post navigation -->
                                    <div class="col-md-12">
                                        <div class="aa-blog-navigation">
                                            <div class="aa-blog-pagination-left">
                                                <a href="#" class="aa-prev">
                            <span class="fa fa-angle-double-left">                            
                            </span>
                                                    Trước
                                                </a>
                                            </div>
                                            <div class="aa-blog-pagination-right">
                                                <a href="#" class="aa-next">
                                                    Sau
                                                    <span class="fa fa-angle-double-right">
                            </span>
                                                </a>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- comment threats -->
                                    <!-- <div class="col-md-12">
                                      <div class="aa-comments-area">
                                        <h3>5 Bình Luận</h3>
                                        <div class="comments">
                                          <ul class="commentlist">
                                            <li>
                                              <div class="media">
                                                <div class="media-left">
                                                    <img alt="img" src="img/testimonial-1.png" class="media-object news-img">
                                                </div>
                                                <div class="media-body">
                                                 <h4 class="author-name">Vương Khánh Như</h4>
                                                 <span class="comments-date"> 20th April, 2016</span>
                                                 <p>Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English</p>
                                                 <a class="reply-btn" href="#">Reply</a>
                                                </div>
                                              </div>
                                            </li>
                                            <li>
                                              <div class="media">
                                                <div class="media-left">
                                                    <img alt="img" src="img/testimonial-2.png" class="media-object news-img">
                                                </div>
                                                <div class="media-body">
                                                 <h4 class="author-name">Trần Bùi Tuấn Ngọc</h4>
                                                 <span class="comments-date"> 20th April, 2016</span>
                                                 <p>Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English</p>
                                                 <a class="reply-btn" href="#">Reply</a>
                                                </div>
                                              </div>
                                            </li>
                                            <ul class="children">
                                              <li class="author-comments">
                                                <div class="media">
                                                  <div class="media-left">
                                                      <img alt="img" src="img/testimonial-3.png" class="media-object news-img">
                                                  </div>
                                                  <div class="media-body">
                                                   <h4 class="author-name">Admin</h4>
                                                   <span class="comments-date"> 20th April, 2016</span>
                                                   <span class="author-tag">Author</span>
                                                   <p>Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English</p>
                                                   <a class="reply-btn" href="#">Reply</a>
                                                  </div>
                                                </div>
                                              </li>
                                              <ul class="children">
                                                <li>
                                                  <div class="media">
                                                    <div class="media-left">
                                                        <img alt="img" src="img/testimonial-1.png" class="media-object news-img">
                                                    </div>
                                                    <div class="media-body">
                                                     <h4 class="author-name">Vương Khánh Như</h4>
                                                     <span class="comments-date"> 20th April, 2016</span>
                                                     <p>Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English</p>
                                                     <a class="reply-btn" href="#">Reply</a>
                                                    </div>
                                                  </div>
                                                </li>
                                              </ul>
                                            </ul>
                                            <li>
                                              <div class="media">
                                                <div class="media-left">
                                                    <img alt="img" src="img/testimonial-2.png" class="media-object news-img">
                                                </div>
                                                <div class="media-body">
                                                 <h4 class="author-name">Phan Nguyễn Gia Ngân</h4>
                                                 <span class="comments-date"> 20th April, 2016</span>
                                                 <p>Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English</p>
                                                 <a class="reply-btn" href="#">Reply</a>
                                                </div>
                                              </div>
                                            </li>
                                          </ul>
                                          <-- comments pagination -->
                                    <!-- <nav>
                                      <ul class="pagination comments-pagination">
                                        <li>
                                          <a aria-label="Previous" href="#">
                                            <span aria-hidden="true">«</span>
                                          </a>
                                        </li>
                                        <li><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">5</a></li>
                                        <li>
                                          <a aria-label="Next" href="#">
                                            <span aria-hidden="true">»</span>
                                          </a>
                                        </li>
                                      </ul>
                                    </nav>
                                  </div>
                                </div>
                              </div>     -->
                                    <!-- Respond box -->
                                    <!-- <div class="col-md-12">
                                      <div id="respond">
                                        <h3 class="reply-title">Leave a Comment</h3>
                                        <form id="commentform">
                                          <p class="comment-notes">
                                            Your email address will not be published. Required fields are marked <span class="required">*</span>
                                          </p>
                                          <p class="comment-form-author">
                                            <label for="author">Name <span class="required">*</span></label>
                                            <input type="text" required="required" size="30" value="" name="author">
                                          </p>
                                          <p class="comment-form-email">
                                            <label for="email">Email <span class="required">*</span></label>
                                            <input type="email" required="required" aria-required="true" value="" name="email">
                                          </p>
                                          <p class="comment-form-url">
                                            <label for="url">Website</label>
                                            <input type="url" value="" name="url">
                                          </p>
                                          <p class="comment-form-comment">
                                            <label for="comment">Comment</label>
                                            <textarea required="required" aria-required="true" rows="8" cols="45" name="comment"></textarea>
                                          </p>
                                          <p class="form-allowed-tags">
                                            You may use these <abbr title="HyperText Markup Language">HTML</abbr> tags and attributes:  <code>&lt;a href="" title=""&gt; &lt;abbr title=""&gt; &lt;acronym title=""&gt; &lt;b&gt; &lt;blockquote cite=""&gt; &lt;cite&gt; &lt;code&gt; &lt;del datetime=""&gt; &lt;em&gt; &lt;i&gt; &lt;q cite=""&gt; &lt;s&gt; &lt;strike&gt; &lt;strong&gt; </code>
                                          </p>
                                          <p class="form-submit">
                                            <input type="submit" value="Post Comment" class="aa-browse-btn" name="submit">
                                          </p>
                                        </form>
                                      </div>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                        <!-- Start blog sidebar -->
                        <div class="col-md-4">
                            <aside class="aa-blog-sidebar">
                                <!-- Start single sidebar -->
                                <!-- <div class="aa-blog-sidebar-single">
                                  <form action="">
                                    <div class="aa-blog-search">
                                      <input class="aa-search-text" type="text" placeholder="Tìm Kiếm...">
                                      <button class="aa-search-submit" type="submit">
                                        <i class="fa fa-search"></i>
                                      </button>
                                    </div>
                                  </form>
                                </div> -->
                                <!-- Start single sidebar -->
                                <!-- <div class="aa-blog-sidebar-single">
                                  <h3>Categories</h3>
                                  <ul class="aa-blog-catg">
                                    <li>Properties <span>15000</span></li>
                                    <li>Apartment <span>5000</span></li>
                                    <li>Office  <span>3000</span></li>
                                    <li>Residential <span>4500</span></li>
                                    <li>Commercial <span>1000</span>
                                        <ul>
                                          <li>category 2.1 <span>50</span></li>
                                          <li>category 2.2 <span>100</span></li>
                                        </ul>
                                    </li>
                                    <li>Villa <span>800</span></li>
                                    <li>Bungalow  <span>200</span></li>
                                    <li>News <span>375</span></li>
                                    <li>Reviews <span>458</span></li>
                                  </ul>
                                </div> -->
                                <!-- Start single sidebar -->

                                <!-- Start single sidebar -->
                                <div class="aa-blog-sidebar-single">
                                    <h3>Bài viết mới nhất</h3>
                                    <div class="aa-blog-recent-post">
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="#">
                                                    <img alt="img" src="img/blog1 (1).jpg" class="media-object">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading"><a href="blog-detail-1.html">Sức hút của thị
                                                    trường BĐS Duy Tiên và cơ hội cho giới địa ốc</a></h4>
                                            </div>
                                        </div>
                                        <div class="media">
                                            <div class="media-left">
                                                <a href="#">
                                                    <img alt="img" src="img/blog1 (2).png" class="media-object">
                                                </a>
                                            </div>
                                            <div class="media-body">
                                                <h4 class="media-heading"><a href="blog-detail-2.html">Tận hưởng “bữa
                                                    tiệc thị giác” với tầm view triệu đô ngay tại trung tâm Hà Nội</a>
                                                </h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="aa-blog-sidebar-single">
                                    <h3>Thẻ</h3>
                                    <div class="tag-cloud">
                                        <a href="#">Thông Thường</a>
                                        <a href="#">Áp Mái</a>
                                        <a href="#">Thông Tầng</a>
                                        <a href="#">Commercial</a>
                                        <a href="#">Văn Phòng</a>
                                        <a href="#">Sky Villa</a>
                                        <a href="#">Dịch vụ</a>
                                    </div>
                                </div>
                                <!-- Start single sidebar -->
                                <div class="aa-blog-sidebar-single">
                                    <div class="aa-banner-ads">
                                        <a href="#">
                                            <img src="https://chuyenstandee.com/wp-content/uploads/2019/11/banner-quang-cao-bat-dong-san.jpg"
                                                 alt="banner img">
                                        </a>
                                    </div>
                                </div>
                            </aside>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- / Blog  -->

<!-- Footer -->
<jsp:include page="footer.jsp"/>
<!-- / Footer -->

<!-- jQuery library -->
<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->
<script src="js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.js"></script>
<!-- slick slider -->
<script type="text/javascript" src="js/slick.js"></script>
<!-- Price picker slider -->
<script type="text/javascript" src="js/nouislider.js"></script>
<!-- mixit slider -->
<script type="text/javascript" src="js/jquery.mixitup.js"></script>
<!-- Add fancyBox -->
<script type="text/javascript" src="js/jquery.fancybox.pack.js"></script>
<!-- Custom js -->
<script src="js/custom.js"></script>

</body>
</html>