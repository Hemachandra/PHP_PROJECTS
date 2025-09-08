<!-- HEADER -->
<?php require './sections/header.php'; ?>

<!-- PAGE CONTENT -->

<div class="ev-page-container">
<div class="uk-grid-large" uk-grid>

<div class="uk-width-expand">

<h5 class="uk-heading-line uk-text-bold">
    <span>
        Shortlisted Properties
    </span>
</h5>

<?php if (!empty($userFavorites)):?>

<div uk-grid>

<?php foreach($userFavorites as $item): ?>

<div class="uk-width-1-2@l uk-width-1-2@m uk-width-1-1@s uk-width-1-1" id="FavId-<?php echo $item['pt_id']; ?>">
<div class="ev-card-2 uk-card uk-card-default uk-grid-collapse uk-child-width-1-2@s uk-margin" uk-grid>
<div class="uk-card-media-left uk-cover-container">
<a href="<?php echo $urlPath->property($item['pt_id'], $item['tr_slug']); ?>">
<img alt="<?php echo echoOutput($item['tr_title']); ?>" src="<?php echo $urlPath->image($item['pt_image']); ?>" uk-cover>
<canvas width="600" height="400"></canvas>
</a>
</div>
<div>
<div class="uk-card-body">

<span class="ev-meta uk-text-small uk-position-right uk-margin-small-right uk-margin-small-top"><a class="removefav uk-text-danger" data-item="<?php echo $item['pt_id']; ?>" data-user="<?php echo $userInfo['user_id']; ?>"><i class="fas fa-times-circle uk-margin-small-right"></i></a></span>

<a href="<?php echo $urlPath->property($item['pt_id'], $item['tr_slug']); ?>">
<h3 class="ev-title uk-card-title uk-text-truncate"><?php echo echoOutput($item['tr_title']); ?></h3>
</a>
<p class="ev-price uk-flex uk-flex-middle"><?php echo getPrice($item['pt_price']); ?>
</p>
<p class="ev-location"><i class="fas fa-map-marker-alt uk-margin-small-right"></i><?php echo getAddress($item['city'], $item['zone']); ?></p>
<ul class="ev-info uk-subnav">
<li><span><?php echo getUnit($item['pt_size']); ?></span></li>
</ul>
</div>
</div>
</div>
</div>

<?php endforeach; ?>

</div>

<?php endif;?>


<?php if (empty($userFavorites)):?>
<div class="uk-margin uk-text-center uk-text-muted">
<p>No Favourite Properties Added</p>
</div>
<?php endif;?>



</div>

</div>
</div>

<!-- END PAGE CONTENT -->

