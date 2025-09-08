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

  // --- SEARCH LOGIC STARTS HERE ---

  // Default search parameters
  $searchCity = isset($_GET['city']) ? $_GET['city'] : '';
  $searchZone = isset($_GET['zone']) ? $_GET['zone'] : '';
  $searchReference = isset($_GET['reference']) ? $_GET['reference'] : '';

  // If form is submitted, redirect to same page with GET parameters
  if ($_SERVER['REQUEST_METHOD'] === 'POST') {
      $params = array();
      if (!empty($_POST['city'])) $params['city'] = $_POST['city'];
      if (!empty($_POST['zone'])) $params['zone'] = $_POST['zone'];
      if (!empty($_POST['reference'])) $params['reference'] = $_POST['reference'];
      $query = http_build_query($params);
      header("Location: search" . ($query ? "?$query" : ""));
      exit;
  }

    
  $cities = getCities($connect, $lang);
  $conditions = getConditions($connect, $lang);
  $status = getStatus($connect, $lang);
  $types = getTypes($connect, $lang);
  $extras = getExtras($connect, $lang);

  $getProperties = getSearchPropertieMobile($settings['st_searchlimit'], $connect, $lang,
    $searchCity, $searchZone, $searchReference);

  $items = $getProperties['items'];
  $total = $getProperties['total'];

  $numPages = numTotalPages($total, $settings['st_searchlimit']);

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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

<!-- Main CSS File -->
<link href="mobile-assets/css/main.css" rel="stylesheet">
<style>
  /* Base pagination styling */
.ev-pagination {
    width: 100%;
    text-align: center;
    margin-top: 20px;
}

.ev-pagination .uk-pagination {
    display: flex;
    justify-content: center;
    gap: 8px;
    flex-wrap: wrap;
    padding: 0;
    margin: 0;
    list-style: none;
}

/* Pagination links */
.ev-pagination .uk-pagination li a,
.ev-pagination .uk-pagination li span {
    display: inline-block;
    padding: 10px 14px;
    font-size: 14px;
    color: #333;
    border: 1px solid #ddd;
    border-radius: 4px;
    text-decoration: none;
    background-color: #fff;
    transition: background-color 0.2s ease;
}

/* Active page */
.ev-pagination .uk-pagination li.uk-active span {
    background-color: #007bff;
    color: #fff;
    border-color: #007bff;
}

/* Hover effect */
.ev-pagination .uk-pagination li a:hover {
    background-color: #f0f0f0;
}

/* Small screen adjustment */
@media screen and (max-width: 480px) {
    .ev-pagination .uk-pagination {
        gap: 6px;
    }

    .ev-pagination .uk-pagination li a,
    .ev-pagination .uk-pagination li span {
        padding: 8px 10px;
        font-size: 13px;
    }

    .ev-pagination .uk-pagination li a i {
        font-size: 14px;
    }
}
</style>
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
    <button class="btn btn-primary d-xl-none " type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasWithBothOptions" aria-controls="offcanvasWithBothOptions"> <i class="d-xl-none bi bi-list"></i></button></nav>
    <?php if (isLogged()) { ?>
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
          <li><a href="<?php echo SITE_URL ?>/profile">Profile </a></li>
            <li><a href="<?php echo $urlPath->signout(); ?>">Signout</a></li>
        <?php } ?>
      </ul>
</nav>  </div>
</div>

<main class="main">
  <!-- Hero Section -->
   
   <!-- /Hero Section -->
  <div class="formser1 d-flex section-title aos-init aos-animate" data-aos="fade-up">
    <form action="#" method="post" role="form" class="php-email-form"  >
      <div class="row">
        <div class="col-md-3 p-0  col-6 form-group">
          <select class="form-control"  id="cityDropdown" name="city" required>
            <option value="">Select State</option>
           <?php foreach($cities as $item): ?> 
                <option value="<?php echo $item['pt_city_id']; ?>">
                  <?php echo echoOutput($item['tr_name']); ?>
                </option> 
            <?php endforeach; ?>
          </select>
        </div>
        <div class="col-md-3 p-0  col-6 form-group">
          <select class="form-control"  id="zoneDropdown" name="zone">
            <option value="">Select District</option>
            <option value='3'>Ranga Reddy</option>
            <option value='2'>Vikarabad</option>
            <option value='4'>Hyderabad</option>
            <option value='5'>Upper Assam</option>
            <option value='6'>West Godavari District</option>
            <option value='7'>ADILABAD</option>
            <option value='8'>BHADRADRI KOTHAGUDEM</option>
            <option value='9'>HANUMAKONDA</option>
            <option value='10'>JAGTIAL</option>
            <option value='11'>JANGOAN</option>
            <option value='12'>JAYASHANKAR BHUPALPALLI</option>
            <option value='13'>JOGULAMBA GADWAL</option>
            <option value='14'>KAMAREDDY</option>
            <option value='15'>KARIMNAGAR</option>
            <option value='16'>KHAMMAM</option>
            <option value='17'>KUMURAM BHEEM</option>
            <option value='18'>MAHABUBABAD</option>
            <option value='19'>MAHABUBNAGAR</option>
            <option value='20'>MANCHERIAL</option>
            <option value='21'>MEDAK</option>
            <option value='22'>MEDCHAL-MALKAJIGIRI</option>
            <option value='23'>MULUG</option>
            <option value='24'>NAGARKURNOOL</option>
            <option value='25'>NALGONDA</option>
            <option value='26'>NARAYANPET</option>
            <option value='27'>NIRMAL</option>
            <option value='28'>NIZAMABAD</option>
            <option value='29'>PEDDAPALLI</option>
            <option value='30'>RAJANNA SIRCILLA</option>
            <option value='31'>RANGAREDDY</option>
            <option value='32'>SANGAREDDY</option>
            <option value='33'>SIDDIPET</option>
            <option value='34'>SURYAPET</option>
            <option value='35'>WANAPARTHY</option>
            <option value='36'>WARANGAL</option>
            <option value='37'>YADADRI BHUVANAGIRI</option>
          </select>
        </div>
        <div class="col-md-4 p-0  col-8 form-group mt-2 mt-md-0">
          <input type="text" class="form-control" name="reference"  
             placeholder="Enter Mandal">
        </div>
        <div class=" col-md-2 col-4 p-0 d-flex text-center sent-messagebt">
          <button type="submit">Search</button>
        </div>
      </div>
    </form>
  </div>
  
    
 
  <!-- /Featured Services Section -->
  <section id="recent-posts" class="recent-posts section bg-white">
   
    <div class="container"> 
        <div class="row call-to-action">
         <div class="col-lg-12 col-md-12 content text-center justify-content-center pt-1 pb-5 ">
          <h3>Are you looking to</h3><br>
        <a class="btn btn-dark align-self-start mb-3"  href="<?php echo SITE_URL ?>/search?type=2">Lands </a> 
  <a class="btn btn-warning align-self-start mb-3"  href="<?php echo SITE_URL ?>/search?type=9">Plots</a>
   <a class="btn btn-dark align-self-start mb-3"  href="<?php echo SITE_URL ?>/search?type=7">Apparment </a> 
  <a class="btn btn-warning align-self-start mb-3"  href="<?php echo SITE_URL ?>/search?type=8">Villas</a>   </div>
       </div>
        <!-- Section Title -->
    <div class="container section-title pb-2 " data-aos="fade-up">
      <h2>Recent Properties</h2>
    </div>
    <!-- End Section Title -->
      <div class="row gy-4">
        <?php foreach($items as $item): ?>
        <div class="col-xl-3 col-6 col-md-6 aos-init aos-animate" data-aos="fade-up" data-aos-delay="100">
          <article>
            <div class="post-img"> 
              <a href="<?php echo $urlPath->property($item['pt_id'], $item['tr_slug']); ?>">
                <img alt="<?php echo echoOutput($item['tr_title']); ?>" 
                  src="<?php echo $urlPath->image($item['pt_image']); ?>" class="img-fluid"> 
              </a>
              </div>
            <p class="ev-price uk-flex uk-flex-middle"><strong><?php echo getPrice($item['pt_price']); ?></strong> </p>
            <?php if(!empty($item['pt_oldprice']) && is_numeric($item['pt_oldprice'])): ?>
            <span class="ev-old-price">
            <?php echo getDiscount($item['pt_price'], $item['pt_oldprice']); ?>
            </span>
            <?php endif; ?>
            <p class="post-category"><?php echo echoOutput($item['status']); ?></p>
            <h2 class="title"> <a href="<?php echo $urlPath->property($item['pt_id'], $item['tr_slug']); ?>"><?php echo echoOutput($item['tr_title']); ?></a> </h2>
            <div class="d-flex align-items-center">
              <div class="post-meta">
                <p class="post-author"><i class="bi bi-geo-alt"></i> <?php echo getAddress($item['city'], $item['zone']); ?></p>
                <p class="post-date">
                  <time datetime="2022-01-01"><?php echo getUnit($item['pt_size']); ?></time>
                </p>
              </div>
            </div>
          </article>
        </div>
        <!-- End post list item -->
        <?php endforeach; ?>
<?php if(!$items): ?>
<div class="uk-width-1-1 uk-flex uk-flex-center uk-text-center uk-margin-large-top">
<div class="uk-width-1-1 uk-width-1-2@s">
<p class="uk-text-bold"><?php echo echoOutput($translation['tr_109']); ?></p>
<p><?php echo echoOutput($translation['tr_110']); ?></p>
</div>
</div>
<?php endif; ?>

<?php if($total > $settings['st_propertieslimit']): ?>
<?php require './sections/pagination.php'; ?>
<?php endif; ?>

        <!-- End post list item -->
      </div>
      <!-- End recent posts list -->
      
    </div>
    
  </section>
    

</main>
<footer id="footer" class="footer dark-background">
  <div class="copyright text-center">
    <div class="container d-flex flex-column flex-lg-row justify-content-center justify-content-lg-between align-items-center">
      <div class="d-flex flex-column align-items-center align-items-lg-start">
        <div> © Copyright <strong><span>A1Lands</span></strong>. All Rights Reserved </div>
      </div>
      <div class="social-links order-first order-lg-last mb-3 mb-lg-0"> <a href=""><i class="bi bi-twitter-x"></i></a> <a href=""><i class="bi bi-facebook"></i></a> <a href=""><i class="bi bi-instagram"></i></a> <a href=""><i class="bi bi-linkedin"></i></a> </div>
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
          <li> <a href="<?php echo SITE_URL ?>/" class="nav-link text-black text-center"> <i class="bi bi-house mx-auto mb-1 d-block" ></i> Home</a> </li>
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
<script src="mobile-assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Main JS File -->
<script src="mobile-assets/js/main.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
  $(document).ready(function(){
  $('.change-page').on('click', function(){

    var paramName = 'p';
    var paramValue = $(this).data('page');

    var url = window.location.href;
    var hash = location.hash;
    url = url.replace(hash, '');
    if (url.indexOf(paramName + "=") >= 0)
    {
      var prefix = url.substring(0, url.indexOf(paramName + "=")); 
      var suffix = url.substring(url.indexOf(paramName + "="));
      suffix = suffix.substring(suffix.indexOf("=") + 1);
      suffix = (suffix.indexOf("&") >= 0) ? suffix.substring(suffix.indexOf("&")) : "";
      url = prefix + paramName + "=" + paramValue + suffix;
    }
    else
    {
      if (url.indexOf("?") < 0)
        url += "?" + paramName + "=" + paramValue;
      else
        url += "&" + paramName + "=" + paramValue;
    }
    
    window.location.href = url + hash;

  });
  
});

</script>
</body>
</html>
