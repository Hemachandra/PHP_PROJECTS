<?php //if(!empty($preferredChoice)): ?>
<div class="ev-section-margin-v-lll servicesSection uk-visible@m" style="margin-top:222px;">

<div class="ev-container ev-section-margin-v-m">

<div class="ev-title-dark uk-text-center uk-margin-remove-top">
<p>What we offer</p>
<h3>Our Services</h3>
</div>
<style>
    .thumbnails .uk-card {
        margin: 4px;
    }
</style>
<!-- Thumbnails for Mobile -->
<div class="thumbnails uk-hidden@l uk-grid-small uk-child-width-1-2" style="    margin-left: 15px;" uk-grid>
    <?php foreach($dropdownOptions as $k => $v) { ?>
        <div class="uk-card uk-card-default" style="width:46%;">
            <a href="<?php echo "https://a1lands.com/" . $v['navigation_url']; ?>" 
               target="<?php echo $v['navigation_target']; ?>">
                <img src="<?php echo $urlPath->image($v['icon']); ?>" alt="Thumbnail Icon">
                <h4><?php echo echoOutput($v['navigation_label']); ?></h4>
            </a>
        </div>
    <?php } ?>
</div>


<!--<div class="uk-slider-container-offset" uk-slider>-->
<div class="slider-container uk-visible@l" uk-slider>
    <div class="uk-position-relative uk-visible-toggle uk-light">

<!--<div class="uk-position-relative uk-visible-toggle uk-light" tabindex="-1">-->

    <ul class="uk-slider-items uk-child-width-1-2 uk-child-width-1-6@m">

        <?php 
        foreach($dropdownOptions as $k => $v){ ?>
            <li>
                <div class="ev-iconlist-v1">
                 <a href="<?php echo "https://a1lands.com/" . $v['navigation_url']; ?>" target="<?php echo $v['navigation_target']; ?>">
                        <img src="<?php echo $urlPath->image($v['icon']); ?>">
                    <!--<div class="uk-position-center uk-panel">-->
                        <h4>
                                <?php echo  echoOutput($v['navigation_label']); ?>
                        </h4>
                    <!--</div>-->
                 </a>

                </div>
            </li>
        <?php } ?>
    </ul>

    <a class="uk-position-center-left uk-position-small" href="#" uk-slidenav-previous uk-slider-item="previous"></a>
    <a class="uk-position-center-right uk-position-small" href="#" uk-slidenav-next uk-slider-item="next"></a>
<style>
    .uk-position-center-left > svg{
        color:#bf7c30 !important;
    }
    .uk-position-center-right > svg{
        color:#bf7c30 !important;
    }
</style>

</div>
    <ul class="uk-slider-nav uk-dotnav uk-flex-center uk-margin"></ul>
</div>
</div>
</div>
<?php //endif; ?>
