<!-- SIDEMENU -->
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

<div class="ev-sidemenu" id="sidemenu" uk-offcanvas="overlay: true;">

    <div class="uk-offcanvas-bar uk-flex uk-flex-column">

        <button class="uk-offcanvas-close" type="button" uk-close></button>

            <div class="uk-width-1-1 uk-flex uk-flex-middle uk-flex-center">
                <a href="<?php echo $urlPath->home(); ?>">
                <img class="uk-logo" src="<?php echo $urlPath->image($theme['th_logo']); ?>">
                </a>
            </div>

        <?php if (isLogged()): ?>

        <article class="uk-comment ev-profile-header" style="margin: 14px 0;">
        <header class="uk-comment-header">
        <div class="uk-grid-small uk-flex-middle" uk-grid>
        <div class="uk-width-auto">
        <img class="uk-comment-avatar" src="<?php echo getGravatar($userInfo['user_email']); ?>" alt="">
        </div>
        <div class="uk-width-expand">
        <h4 class="uk-comment-title uk-margin-remove"><?php echo echoOutput(textTruncate($userInfo['user_name'], 10)); ?></h4>
        <p class="uk-comment-meta uk-margin-remove-top"><a class="uk-link-reset" href="<?php echo $urlPath->profile(); ?>"><?php echo $translation['tr_10']; ?></a></p>
        </div>
        </div>
        </header>
        </article>

        <?php endif; ?>

        <?php if (!isLogged()): ?>

        <a class="ev-signin uk-button uk-border-pill" href="<?php echo $urlPath->signin(); ?>">
        <i class="fas fa-user uk-margin-small-right"></i> <?php echo $translation['tr_48']; ?>
        </a>

        <?php endif; ?>
        <ul class="ev-main-menu uk-nav-default uk-margin-small-bottom" uk-nav>
            <li><a href="https://a1lands.com/" class="active">Home<br>
            </a></li>
            <li><a href="https://www.a1lands.com//specialproperties">Premium Lands</a></li>
            <li><a href="https://www.a1lands.com//properties">All Properties</a></li>
            <li><a href="https://www.a1lands.com//blog">Blog</a></li>
            <li><a href="https://www.a1lands.com//contact-us">Contact</a></li>
            <li class="dropdown" onclick="toggleServicesSublist(this)">
                <a href="#"><span>Services</span> 
                    <i class="bi bi-chevron-down toggle-dropdown"></i>
                </a>
                <ul class="nested">
                    <?php 
                        $counter = 1;
                        foreach($navigationHeader as $item):
                            if(!in_array($item['navigation_url'],$dropdownCheck)){
                            if ($item['navigation_type'] == 'custom') { 
                                if ($item['navigation_url'] == "services") { 
                                foreach ($dropdownOptions as $it): ?>
                                    <li style="padding-left: 20px; important; color: #000; important;">
                                        <a href="<?php echo "https://a1lands.com/" . $it['navigation_url']; ?>" 
                                            target="<?php echo $it['navigation_target']; ?>">
                                            <?php echo echoOutput($it['navigation_label']); ?>
                                        </a>
                                    </li>
                                <?php endforeach; ?>
                                <?php }
                        }  ?>
                    <?php $counter++; } ?>
                    <?php endforeach; ?>
                </ul>
            </li>
            
        </ul>    

        <div class="uk-width-1-1 uk-flex uk-flex-center">
        <ul class="ev-followus uk-iconnav uk-margin-small-top uk-margin-small-bottom">
        <?php foreach($socialMedia as $item): ?>
        <?php if (!empty($item['st_facebook'])): ?>
        <li><a href="<?php echo $item['st_facebook'] ?>" uk-icon="icon: facebook" style="color: #3b5998"></a></li>
        <?php endif;?>
        <?php if (!empty($item['st_twitter'])): ?>
        <li><a href="<?php echo $item['st_twitter'] ?>" uk-icon="icon: twitter" style="color: #1da1f2"></a></li>
        <?php endif;?>
        <?php if (!empty($item['st_youtube'])): ?>
        <li><a href="<?php echo $item['st_youtube'] ?>" uk-icon="icon: youtube" style="color: #ff0000"></a></li>
        <?php endif;?>
        <?php if (!empty($item['st_linkedin'])): ?>
        <li><a href="<?php echo $item['st_linkedin'] ?>" uk-icon="icon: linkedin" style="color: #0077b5"></a></li>
        <?php endif;?>
        <?php if (!empty($item['st_instagram'])): ?>
        <li><a href="<?php echo $item['st_instagram'] ?>" uk-icon="icon: instagram" style="color: #c13584"></a></li>
        <?php endif;?>
        <?php if (!empty($item['st_whatsapp'])): ?>
        <li><a href="<?php echo $item['st_whatsapp'] ?>" uk-icon="icon: whatsapp" style="color: #25d366"></a></li>
        <?php endif;?>
        <?php endforeach; ?>
        </ul>
        </div>

    </div>

</div>

<!-- END SIDEMENU -->