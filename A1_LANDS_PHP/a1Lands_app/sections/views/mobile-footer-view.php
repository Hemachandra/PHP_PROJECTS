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