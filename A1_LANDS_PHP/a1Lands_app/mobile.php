<?php

$headerMenu = getHeaderMenu($connect, $lang);

$navigationHeader = getNavigation($connect, $headerMenu['menu_id'], $lang);

    $dropdownOptions = array();
    $dropdownCheck = array();

        foreach($navigationHeader as $k => $v){
            if($v['navigation_url'] == "verified-properties"
            || $v['navigation_url'] == "legal-check" || $v['navigation_url'] == "legal-documentation" || $v['navigation_url'] == "legal-desk"
            || $v['navigation_url'] == "pest-control" || $v['navigation_url'] == "vasthu" || $v['navigation_url'] == "tenant-verification"
            || $v['navigation_url'] == "architect" || $v['navigation_url'] == "home-loans"
            || $v['navigation_url'] == "property-valuation" || $v['navigation_url'] == "legal-title-check"|| $v['navigation_url'] == "rates-trends"
            || $v['navigation_url'] == "investment-hotspot" || $v['navigation_url'] == "investment-insights" ){
                $dropdownCheck[] = $v['navigation_url'];
                $dropdownOptions[] = $v;
            }
        }
    ?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<title>A1Lands</title>
<meta name="description" content="">
<meta name="keywords" content="">
<!-- Favicons -->
<link rel="shortcut icon" href="<?php echo SITE_URL ?>/images/favicon.png">
<!-- Fonts -->
<link href="https://fonts.googleapis.com" rel="preconnect">
<link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Source+Sans+Pro:ital,wght@0,200;0,300;0,400;0,600;0,700;0,900;1,200;1,300;1,400;1,600;1,700;1,900&display=swap" rel="stylesheet">
<!-- Vendor CSS Files -->
<link href="mobile-assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="mobile-assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<!-- Main CSS File -->
<link href="mobile-assets/css/main.css" rel="stylesheet">
</head>
<body class="index-page">

<header id="header" class="header d-flex align-items-center sticky-top">
  <div class="container position-relative d-flex align-items-center justify-content-between"> 
    <a href="<?php echo SITE_URL ?>/" class="logo d-flex align-items-center me-auto me-xl-0">
    <!--  image logo -->
    <img src="mobile-assets/img/logo.png" alt=""> </a>
      <nav id="navmenu" class="navmenu">
      <ul>
        <li><a href="<?php echo SITE_URL ?>/" class="active">Home<br>
          </a></li>
        <li><a href="<?php echo SITE_URL ?>/specialproperties">Premium Lands</a></li>
        <li class="dropdown"><a href="#"><span>Services</span> <i class="bi bi-chevron-down toggle-dropdown"></i></a>
                <ul>
       <?php $counter = 1;
            foreach($navigationHeader as $item): ?>
                <?php
                if(!in_array($item['navigation_url'],$dropdownCheck)){ ?>
                <?php if ($item['navigation_type'] == 'custom') { 
                    
                    if ($item['navigation_url'] == "services") { ?>
                    <?php
                      foreach ($dropdownOptions as $it): ?>
                          <li><a href="<?php echo "<?php echo SITE_URL ?>/" . $it['navigation_url']; ?>" target="<?php echo $it['navigation_target']; ?>"><?php echo echoOutput($it['navigation_label']); ?></a></li>

                      <?php endforeach; ?>
                    <?php }
            }  ?>
            <?php $counter++; } ?>
            <?php endforeach; ?>
            </ul>
        </li>
        <li><a href="#">All Properties</a></li>
        <li><a href="#">Blog</a></li>
        <li><a href="#">Contact us</a></li>
      </ul>
    <button class="btn btn-primary d-xl-none " type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasWithBothOptions" aria-controls="offcanvasWithBothOptions"> <i class="d-xl-none bi bi-list"></i></button>
  </nav>
    <?php 
      if (isLogged() && isLogged() >= 1) { 
      ?>
        <a class="btn-getstarted"  href="<?php echo SITE_URL ?>/admin/controller/new_property.php" onclick="firePostPropertyGTM(event,'<?php echo SITE_URL ?>/admin/controller/new_property.php');">Post Property <sup>Free</sup></a> 
      <?php }else{ ?>
        <a class="btn-getstarted" href="<?php echo SITE_URL ?>/signin">Post Property <sup>Free</sup></a> 
        <a class="btn-getstarted " href="<?php echo SITE_URL ?>/signin"> Sign in</a> 
      <?php } ?>
      

</div>
</header>
 

<div class="offcanvas offcanvas-start " data-bs-scroll="true" tabindex="-1" id="offcanvasWithBothOptions" aria-labelledby="offcanvasWithBothOptionsLabel">
  <div class="offcanvas-header">
    <h5 class="offcanvas-title" id="offcanvasWithBothOptionsLabel">Menu</h5>
    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
  </div>
  <div class="offcanvas-body">
      <nav  class="navmen"><ul>
        <li><a href="<?php echo SITE_URL ?>/" class="active">Home<br>
          </a></li>
        <li><a href="<?php echo SITE_URL ?>/specialproperties">Premium Lands</a></li>
        <li class="dropdown"><a href="#" ><span>Services</span> <i class="bi bi-chevron-down toggle-dropdown" ></i></a>
          <ul>
            <li><a href="<?php echo SITE_URL ?>/investment-insights">Investment Insights</a></li>
            <li><a href="<?php echo SITE_URL ?>/legal-check">Legal Check</a></li>
            <li><a href="<?php echo SITE_URL ?>/verified-properties">Verified Properties</a></li>
             <li><a href="<?php echo SITE_URL ?>/legal-desk">Legal Desk</a></li>
            <li><a href="<?php echo SITE_URL ?>/legal-title-check">Legal Title Check</a></li>
          </ul>
        </li>
        <li><a href="<?php echo SITE_URL ?>/properties">All Properties</a></li>
        <li><a href="<?php echo SITE_URL ?>/blog">Blog</a></li>
        <li><a href="<?php echo SITE_URL ?>/contact-us">Contact us</a></li>
        <?php if (isLogged()){ ?>
          <li><a href="<?php echo SITE_URL ?>/profile">Profile
            </a></li>  
          <li><a href="<?php echo $urlPath->signout(); ?>">Signout</a></li>
        <?php } ?>
      </ul>
</nav>  </div>
</div>


<main class="main">
    <!-- Hero Section -->
    <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
  <?php 
  $homeSlider = getSlider($connect, $lang);
  if ($homeSlider){?>
    <?php foreach($homeSlider as $item){ ?>
      <div class="carousel-item active">
        <img src="<?php echo $urlPath->image($item['slider_image']); ?>" class="d-block w-100" alt="...">
      </div>
    <?php } 
    } ?>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
  <?php 
  
  $cities = getCities($connect, $lang);
$conditions = getConditions($connect, $lang);
$status = getStatus($connect, $lang);
$types = getTypes($connect, $lang);
$extras = getExtras($connect, $lang);
  ?>
  
   <section id="call-to-action" class="call-to-action bg-light section">
    <div class="container aos-init aos-animate" data-aos="zoom-out">
      <div class="row">
        <div class="col-lg-3"> </div>
        <div class="col-lg-6 col-md-6 content text-center justify-content-center cass ">
          <h3>Are you looking to</h3>
          <a class="cta-btn align-self-start" href="<?php echo SITE_URL ?>/search">Buy Property </a> 
                <?php if (isLogged()) { ?>

              <a class="cta-btn bg-black align-self-start" href="<?php echo SITE_URL ?>/admin/controller/new_property.php">Sell Property </a> </div>
          <?php }else{ ?>
              <a class="cta-btn bg-black align-self-start" href="<?php echo SITE_URL ?>/signin">Sell Property </a> </div>

            <?php } ?>
        <div class="col-lg-3"> </div>
      </div>
    </div>
  </section>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Looking for ?</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body list-group">
       <a href="<?php echo SITE_URL ?>/search?extras%5B%5D=1" class="btn btn-light mb-3">New Launch</a>
		   <a href="<?php echo SITE_URL ?>/search?extras%5B%5D=2" class="btn btn-warning mb-3">Under Construction</a>
		   <a href="<?php echo SITE_URL ?>/search?extras%5B%5D=2" class="btn btn-light mb-3">Ready to Move</a>
		   <a href="<?php echo SITE_URL ?>/search?extras%5B%5D=2" class="btn btn-warning">Owner</a>

      </div>
      <div class="modal-footer">
        </div>
    </div>
  </div>
</div>

  <section id="recent-posts" class="recent-posts section bg-light">
    <!-- Section Title -->
     <?php $latestProperties = getLatestProperties( $connect, $lang, $settings['st_recentproperties']); ?>
    <div class="container section-title pb-5 " data-aos="fade-up">
      <h2>Recent Properties</h2>
    </div>
    <!-- End Section Title -->
    <div class="container">
      <div class="row gy-4">
        <?php 
        foreach($latestProperties as $item){ ?>
        <div class="col-xl-3 col-6 col-md-6 aos-init aos-animate" data-aos="fade-up" data-aos-delay="100">
          <article onclick="location.href='<?php echo $urlPath->property($item['pt_id'], $item['tr_slug']); ?>'">
            <div class="post-img"> <img alt="<?php echo echoOutput($item['tr_title']); ?>" src="<?php echo $urlPath->image($item['pt_image']); ?>"  class="img-fluid"> </div>
            <p class="ev-price uk-flex uk-flex-middle"><strong><?php echo getPrice($item['pt_price']); ?></strong> </p>
            <p class="post-category">Purchase</p>
            <h2 class="title"> <a href="<?php echo $urlPath->property($item['pt_id'], $item['tr_slug']); ?>"><?php echo getUnit($item['pt_size']); ?></a> </h2>
            <div class="d-flex align-items-center">
              <div class="post-meta">
                <p class="post-author"><i class="bi bi-geo-alt"></i> <?php echo getAddress($item['city'], $item['zone']); ?></p>
                <p class="post-date">
                  <time datetime="2022-01-01"><?php echo getUnit($item['pt_size']); ?> </time>
                </p>
              </div>
            </div>
          </article>
        </div>
        <!-- End post list item -->
         <?php } ?>
      </div>
      <!-- End recent posts list -->
    </div>
  </section>

    <!-- Featured Services Section -->
    <section id="featured-services" class="featured-services section bg-light">
    <!-- Section Title -->
    <div class="container section-title " data-aos="fade-up">
      <p>What we offer</p>
      <h2>Advice & Tools Section
</h2>
    </div>
    <!-- End Section Title -->
    <div class="container">
      <div class="row gy-4">
        <div class="col-xl-3 col-6 col-md-6  " data-aos="fade-up" data-aos-delay="100">
          <div class="service-item position-relative">
            <div class="icon"><i class="bi bi-graph-up-arrow icon"></i></div>
            <h4><a href="<?php echo SITE_URL ?>/investment-insights" class="stretched-link">Investment Insights </a></h4>
            <p>Real estate continues to be one of the most popular and profitable forms of investment. </p>
          </div>
        </div>
        <!-- End Service Item -->
        <div class="col-xl-3 col-6 col-md-6  " data-aos="fade-up" data-aos-delay="200">
          <div class="service-item position-relative">
            <div class="icon"><i class="bi bi-journal-check icon"></i></div>
            <h4><a href="<?php echo SITE_URL ?>/legal-title-check" class="stretched-link">Legal Title Check</a></h4>
            <p>The A1Lands Legal Check service is designed to assist buyers in evaluating any property</p>
          </div>
        </div>
        <!-- End Service Item -->
        <div class="col-xl-3 col-6 col-md-6  " data-aos="fade-up" data-aos-delay="400">
          <div class="service-item position-relative">
            <div class="icon"><i class="bi bi-broadcast icon"></i></div>
            <h4><a href="<?php echo SITE_URL ?>/property-valuation" class="stretched-link">Property Valuation </a></h4>
            <p>Property valuation is a fundamental part of the real estate process, providing essential</p>
          </div>
        </div>
        <!-- End Service Item -->
      </div>
    </div>
  </section>

  <!-- /Featured Services Section -->
</main>
<footer id="footer" class="footer dark-background">
  <div class="copyright text-center">
    <div class="container d-flex flex-column flex-lg-row justify-content-center justify-content-lg-between align-items-center">
      <div class="d-flex flex-column align-items-center align-items-lg-start">
        <div> © Copyright <strong><span>A1Lands</span></strong>. All Rights Reserved </div>
      </div>
      <div class="social-links order-first order-lg-last mb-3 mb-lg-0"> 
         <?php foreach($socialMedia as $item): ?>
            <?php if (!empty($item['st_facebook'])): ?>
                <a href="<?php echo $item['st_facebook'] ?>"><i class="bi bi-facebook"></i></a> 

            <?php endif;?>
            <?php if (!empty($item['st_twitter'])): ?>
                <a href="<?php echo $item['st_twitter'] ?>"><i class="bi bi-twitter-x"></i></a> 
            <?php endif;?>
   
            <?php if (!empty($item['st_linkedin'])): ?>
            <a href="<?php echo $item['st_linkedin'] ?>"><i class="bi bi-linkedin"></i></a> </div>

            <?php endif;?>
            <?php if (!empty($item['st_instagram'])): ?>
                <a href="<?php echo $item['st_instagram'] ?>"><i class="bi bi-instagram"></i></a> 

            <?php endif;?>
            
        <?php endforeach; ?>
    </div>
  </div>
</footer>
<!-- Scroll Top -->
<a href="#" id="scroll-top" class="scroll-top d-none align-items-center justify-content-center"> </a>
<foot>
  <div class="bg-light border-top dsd footer navbar-fixed-bottom">
    <div class="container-fluid p-0 ">
      <div class=" p-0  d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
          <ul class="nav nav-cu my-2 justify-content-center my-md-0 text-small">
          <li> <a href="<?php echo SITE_URL ?>" class="nav-link text-black text-center"> <i class="bi bi-house mx-auto mb-1 d-block" ></i> Home</a> </li>
          <li> <a href="<?php echo SITE_URL ?>/properties" class="nav-link text-black text-center"> <i class="bi bi-search mx-auto mb-1 d-block" ></i> All Properties </a> </li>
          <li> <a href="#" class="nav-link text-black text-center"> <i class="bi bi-geo-alt mx-auto mb-1 d-block" ></i> Map  View </a> </li>
          <li> <a href="<?php echo SITE_URL ?>/specialproperties" class="nav-link text-secondary text-center" > <i class="bi bi-building mx-auto mb-1 d-block" ></i> Premium  Properties </a> </li>
           <?php if (isLogged()) { ?>
          <li> <a href="<?php echo SITE_URL ?>/shorlistproperties" class="nav-link text-black text-center"> <i class="bi bi-people mx-auto mb-1 d-block"></i> Shortlisted </a> </li>
          <?php } ?>
          <li> <a href="#" class="nav-link text-black text-center"> <i class="bi bi-ui-checks mx-auto mb-1 d-block"  ></i> Services </a> </li>
        </ul>
      </div>
    </div>
  </div>
</foot>
<!-- Vendor JS Files -->
<script src="assets/js/jquery.js"></script>

<script src="mobile-assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Main JS File -->
<script src="mobile-assets/js/main.js"></script>

</body>
</html>
