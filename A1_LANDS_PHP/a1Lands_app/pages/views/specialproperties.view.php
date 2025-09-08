<!-- PAGE CONTENT -->
<div class="ev-page-container">

<?php if(!empty($itemDetails['tr_content'])): ?>
<div class="uk-width-1-1">
<?php echo $itemDetails['tr_content']; ?>
</div>
<?php endif; ?>

<div class="uk-grid-large" uk-grid>

<div class="uk-width-1-1">

<!--<div class="uk-child-width-1-2 uk-text-center" uk-grid>-->

<!--    <div>-->
<!--        <a class="uk-button uk-button-default uk-width-1-1  uk-button-large" href="?type=land">Lands</a>-->
<!--    </div>-->
<!--    <div>-->
<!--        <a class="uk-button uk-button-default  uk-width-1-1 uk-button-large" href="?type=open-plots">Plots</a>-->
<!--    </div>-->
<!--</div>-->
<div class="uk-grid-medium" uk-grid>
<div class="uk-width-1-2 uk-width-expand@m">
<div class="ev-listing-title">
<h5 class="uk-text-truncate"><?php echo echoOutput($translation['tr_95']); ?></h5>
<p><?php echo $total; ?> <?php echo echoOutput($translation['tr_96']); ?></p>
</div>
</div>
<div class="uk-width-1-2 uk-width-1-5@m">
<select class="ev-order-by nc-select wide" id="sortby">
<option <?php echo getSortBy('default'); ?>><?php echo echoOutput($translation['tr_102']); ?></option>
<option <?php echo getSortBy('price-desc'); ?>><?php echo echoOutput($translation['tr_103']); ?></option>
<option <?php echo getSortBy('price-asc'); ?>><?php echo echoOutput($translation['tr_104']); ?></option>
<option <?php echo getSortBy('date-desc'); ?>><?php echo echoOutput($translation['tr_105']); ?></option>
<option <?php echo getSortBy('date-asc'); ?>><?php echo echoOutput($translation['tr_106']); ?></option>
<option <?php echo getSortBy('size-desc'); ?>><?php echo echoOutput($translation['tr_107']); ?></option>
<option <?php echo getSortBy('size-asc'); ?>><?php echo echoOutput($translation['tr_108']); ?></option>
</select>
</div>

</div>

<?php if(isset($_GET['city']) || isset($_GET['zone']) || isset($_GET['status']) || isset($_GET['type']) || isset($_GET['condition']) || isset($_GET['offers'])): ?>

<div class="uk-width-1-1 uk-margin-top uk-margin-bottom">

<?php if(getSlugCity() && !empty($cityDetails)): ?>
<a class="ev-badge uk-badge" onclick="removeFilter('city');">
<i class="fas fa-times"></i> <?php echo echoOutput($cityDetails['tr_name']); ?>
</a>
<?php endif; ?>

<?php if(getSlugZone() && !empty($zoneDetails)): ?>
<a class="ev-badge uk-badge" onclick="removeFilter('zone');">
<i class="fas fa-times"></i> <?php echo echoOutput($zoneDetails['tr_name']); ?>
</a>
<?php endif; ?>

<?php if(getSlugStatus() && !empty($statusDetails)): ?>
<a class="ev-badge uk-badge" onclick="removeFilter('status');">
<i class="fas fa-times"></i> <?php echo echoOutput($statusDetails['tr_name']); ?>
</a>
<?php endif; ?>

<?php if(getSlugType() && !empty($typeDetails)): ?>
<a class="ev-badge uk-badge" onclick="removeFilter('type');">
<i class="fas fa-times"></i> <?php echo echoOutput($typeDetails['tr_name']); ?>
</a>
<?php endif; ?>

<?php if(getSlugCondition() && !empty($conditionDetails)): ?>
<a class="ev-badge uk-badge" onclick="removeFilter('condition');">
<i class="fas fa-times"></i> <?php echo echoOutput($conditionDetails['tr_name']); ?>
</a>
<?php endif; ?>

<?php if(getParamsOffers() && !empty(getParamsOffers())): ?>
<a class="ev-badge uk-badge" onclick="removeFilter('offers');">
<i class="fas fa-times"></i> <?php echo echoOutput($translation['tr_128']); ?>
</a>
<?php endif; ?>

</div>

<?php endif; ?>


<div class="uk-grid-medium" uk-grid>

<?php foreach($items as $item): ?>
<div class="uk-width-1-1 uk-width-1-2@s uk-width-1-3@m">
<div class="ev-card-1">
<div>
<div class="uk-card uk-card-default uk-card-body">
<a href="<?php echo $urlPath->property($item['pt_id'], $item['tr_slug']); ?>">
<div class="uk-inline">
<div class="uk-card-media-top uk-cover-container">
<img alt="<?php echo echoOutput($item['tr_title']); ?>" class="uk-border-rounded" src="<?php echo $urlPath->image($item['pt_image']); ?>" uk-cover>
<canvas width="600" height="400"></canvas>
</div>
<div class="uk-overlay uk-light uk-position-top">
<span class="uk-label uk-label-primary">
<?php echo echoOutput($translation['tr_26']); ?>
</span>

<?php if(!empty($item['pt_oldprice']) && is_numeric($item['pt_oldprice'])): ?>
<span class="ev-discount uk-label uk-label-default">
<?php echo echoOutput($translation['tr_120']); ?> <b class="uk-text-bold"><?php echo getPercent($item['pt_price'], $item['pt_oldprice']); ?></b>
</span>
<?php endif; ?>
</div>

<div class="uk-overlay overlay-gradient uk-position-bottom">
<p class="ev-price uk-flex uk-flex-middle"><?php echo getPrice($item['pt_price']); ?>
<?php if(!empty($item['tr_label'])): ?>
<small><?php echo echoOutput($item['tr_label']); ?></small>
<?php endif; ?>

<?php if(!empty($item['pt_oldprice']) && is_numeric($item['pt_oldprice'])): ?>
<span class="ev-old-price">
 <?php echo getDiscount($item['pt_price'], $item['pt_oldprice']); ?>
</span>
<?php endif; ?>
</p>
</div>

</div>
</a>
<div class="ev-body">
<span class="ev-meta uk-text-small"><?php echo echoOutput($item['status']); ?></span>
<h3 class="ev-title uk-card-title uk-text-bolder uk-text-truncate uk-text-truncate"><?php echo echoOutput($item['tr_title']); ?></h3>
<p class="ev-location"><i class="fas fa-map-marker-alt uk-margin-small-right"></i>
<?php echo getAddress($item['city'], $item['zone']); ?>
</p>
<ul class="ev-info uk-subnav" uk-margin>
<li><span><?php echo getUnit($item['pt_size']); ?></span></li>
</ul>
</div>
</div>
</div>
</div>
</div>
<?php endforeach; ?>

</div>

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

</div>
</div>
</div>

<!-- END PAGE CONTENT -->
