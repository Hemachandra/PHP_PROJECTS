<div class="ev-header-1 uk-visible@m">
<style>
    .mb-header__main__postproperty>a {
    display: inline-block;
    font-size: 12px;
    font-weight: 400;
    line-height: 16px;
    background-color: #fff;
    border-radius: 16px;
    padding: 8px 10px;
    color: #bf7c30 !important;
    width: 90px;
    text-align: center;
    border: solid 1px;
}
</style> 
<div class="ev-topnav uk-section-primary uk-padding-small">
<div class="ev-container">
<nav class="uk-navbar-container uk-navbar-transparent" uk-navbar>
<div class="uk-navbar-left">

<ul class="uk-iconnav">
<?php foreach($socialMedia as $item): ?>
<?php if (!empty($item['st_facebook'])): ?>
<li><a href="<?php echo $item['st_facebook'] ?>" uk-icon="icon: facebook"></a></li>
<?php endif;?>
<?php if (!empty($item['st_twitter'])): ?>
<li><a href="<?php echo $item['st_twitter'] ?>" uk-icon="icon: twitter"></a></li>
<?php endif;?>
<?php if (!empty($item['st_youtube'])): ?>
<li><a href="<?php echo $item['st_youtube'] ?>" uk-icon="icon: youtube"></a></li>
<?php endif;?>
<?php if (!empty($item['st_linkedin'])): ?>
<li><a href="<?php echo $item['st_linkedin'] ?>" uk-icon="icon: linkedin"></a></li>
<?php endif;?>
<?php if (!empty($item['st_instagram'])): ?>
<li><a href="<?php echo $item['st_instagram'] ?>" uk-icon="icon: instagram"></a></li>
<?php endif;?>
<?php if (!empty($item['st_whatsapp'])): ?>
<li><a href="<?php echo $item['st_whatsapp'] ?>" uk-icon="icon: whatsapp"></a></li>
<?php endif;?>
<?php endforeach; ?>
</ul>

</div>
<div class="uk-navbar-right">
                <ul style="padding:0px;margin:0px;">
                <li style="list-style:none;">
                <div class="mb-header__main__postproperty">
                    <?php if (isLogged()) { ?>
                        <a href="https://a1lands.com/admin/controller/new_property.php" onclick="firePostPropertyGTM(event,'https://a1lands.com/admin/controller/new_property.php');">Post Property</a>
                    <?php } else { ?>
                        <a href="https://a1lands.com/signin">Post Property</a>

                    <?php } ?>
                </div>
            </li>
                </ul>
         </div>
<?php require './sections/languages.php'; ?>


</nav>
</div>
</div>

<nav class="ev-nav uk-navbar-container uk-padding-small">
<div class="ev-container" uk-navbar>

<div class="uk-navbar-left">
<?php
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

<a class="uk-navbar-item uk-logo uk-margin-medium-right" href="<?php echo $urlPath->home(); ?>">
    <img src="<?php echo $urlPath->image($theme['th_logo']); ?>">
</a>

<ul class="uk-navbar-nav">
    <?php
    $dropdownOptions = array();
    $dropdownCheck = array();
    // die(print_r($navigationHeader));
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
<?php
$counter = 1;
foreach($navigationHeader as $item): ?>
    <?php
    if(!in_array($item['navigation_url'],$dropdownCheck)){ ?>
    <?php if ($item['navigation_type'] == 'custom') { 
        
        if ($item['navigation_url'] == "services") { ?>
            <li>
                <a href="#"><?php echo echoOutput($item['navigation_label']); ?> <span uk-navbar-parent-icon></span> <img style="margin-left:5px;" width="16" src="https://a1lands.com/images/dd.png"></a>
                <!-- <div class="uk-navbar-dropdown uk-navbar-dropdown-width-2">
                    <ul class="uk-nav uk-navbar-dropdown-nav">
                       <?php foreach($dropdownOptions as $it): ?>
                        <li><a href="<?php echo "https://a1lands.com/".$it['navigation_url']; ?>" target="<?php echo $it['navigation_target']; ?>"><?php echo echoOutput($it['navigation_label']); ?></a></li>
                        <li class="uk-nav-divider"></li>

                        <?php endforeach; ?>
                    </ul>
                </div> -->
                <div class="uk-navbar-dropdown uk-navbar-dropdown-width-3">
                    <div class="uk-navbar-dropdown-grid uk-child-width-1-3" uk-grid>
                        <div>
                            <?php $counter = 0; ?>
                            <ul class="uk-nav uk-navbar-dropdown-nav">
                                <?php
                                $one = array_slice($dropdownOptions,0,6);
                                foreach ($one as $it):
                                    // if ($counter <= 5) {
                                        ?>
                                    <li><a href="<?php echo "https://a1lands.com/" . $it['navigation_url']; ?>" target="<?php echo $it['navigation_target']; ?>"><?php echo echoOutput($it['navigation_label']); ?></a></li>
                                    <li class="uk-nav-divider"></li>
                                <?php
                                // $counter++; }
                                    endforeach; ?>
                            </ul>
                        </div>
                        <div>
                            <ul class="uk-nav uk-navbar-dropdown-nav">
                                <?php 
                                $two = array_slice($dropdownOptions,6,6);
                                foreach ($two as $it):
                                    // if ($counter <= 11) {
                                        ?>
                                    <li><a href="<?php echo "https://a1lands.com/" . $it['navigation_url']; ?>" target="<?php echo $it['navigation_target']; ?>"><?php echo echoOutput($it['navigation_label']); ?></a></li>
                                    <li class="uk-nav-divider"></li>
                                <?php
                                // $counter++; }
                                    endforeach; ?>
                            </ul>
                        </div>
                        <div>
                            <ul class="uk-nav uk-navbar-dropdown-nav">
                                <?php 
                                $three = array_slice($dropdownOptions,11,6);
                                foreach ($three as $it):
                                    // if ($counter <= 11) {
                                        ?>
                                    <li><a href="<?php echo "https://a1lands.com/" . $it['navigation_url']; ?>" target="<?php echo $it['navigation_target']; ?>"><?php echo echoOutput($it['navigation_label']); ?></a></li>
                                    <li class="uk-nav-divider"></li>
                                <?php
                                // $counter++; }
                                    endforeach; ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </li>
               <?php } else {
                    $link = '';
                    if(echoOutput($item['navigation_label']) == "Buy" || echoOutput($item['navigation_label']) == "Lease" || echoOutput($item['navigation_label']) == "Rent"){
                        $link = "https://a1lands.com/";
                    }
                    $linkLabel = ($item['navigation_url'] == "#")?($item['navigation_url']."uk-tabs"):($item['navigation_url']);
                ?>
        
    <li><a href="<?php echo $link.$linkLabel; ?>" target="<?php echo $item['navigation_target']; ?>" class="<?php echo echoOutput($item['navigation_label']); ?>"><?php echo echoOutput($item['navigation_label']); ?></a></li>
    <?php }
} else { 
    $link = '';
    if(echoOutput($item['navigation_label']) == "Buy" || echoOutput($item['navigation_label']) == "Lease" || echoOutput($item['navigation_label']) == "Rent"){
        $link = "https://a1lands.com/";
    }
    $linkLabel = ($item['navigation_url'] == "#")?($item['navigation_url']."uk-tabs"):($item['navigation_url']);

    ?>
    <li><a href="<?php echo $link.$urlPath->page($linkLabel); ?>" target="<?php echo $item['navigation_target']; ?>" class="<?php echo echoOutput($item['navigation_label']); ?>"><?php echo echoOutput($item['navigation_label']); ?></a></li>
    <?php } ?>
<?php $counter++; } ?>
<?php endforeach; ?>
</ul>
</div>

<div class="uk-navbar-right">
<div class="uk-navbar-item">

<?php if (isLogged()): ?>

<article class="uk-comment ev-profile-header">
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

<a class="uk-button uk-button-secondary uk-button-large uk-text-truncate uk-border-pill" href="<?php echo $urlPath->signin(); ?>">
<i class="fas fa-user uk-margin-small-right"></i> <?php echo $translation['tr_48']; ?>
</a>

<?php endif; ?>

</div>
</div>
</div>
</div>
</nav>

<div class="ev-header-1 uk-hidden@m">
    <div class="ev-topnav uk-section-primary uk-padding-small">
        <!--<div class="ev-container">-->
        <div class="ev-container111">
            <nav class="uk-navbar-container uk-navbar-transparent" uk-navbar>
                <ul class="uk-navbar-right" style="padding-bottom: 0px !important;margin-bottom: 0px;">
                    <li style="list-style:none;">
                        <div class="mb-header__main__postproperty">
                            <?php if (isLogged()) { ?>
                                <a href="https://a1lands.com/admin/controller/new_property.php" onclick="firePostPropertyGTM(event,'https://a1lands.com/admin/controller/new_property.php');">Post Property</a>
                            <?php } else { ?>
                                <a href="https://a1lands.com/signin">Post Property</a>
        
                            <?php } ?>
                            </div>
                        </li>
                </ul>
            <div class="uk-navbar-center uk-hidden@m">
                <?php require './sections/languages.php'; ?>
            </div>
        </div>
    </div>
</div>
</div>

<?php require './sections/views/mobile-header.view.php'; ?>
