<?php //if(!empty($preferredChoice)): ?>
<div class="ev-section-margin-v-l">

<div class="ev-container ev-section-margin-v-m">

<div class="ev-title-dark uk-text-center uk-margin-remove-top">
<!-- <p>What we offer</p> -->
<h3>Advice & Tools Section</h3>
</div>
<style>
    .testClass{
        border: solid 1px #7d7d7d;
        border-radius: 10px;
    }
</style>
<div uk-grid>

<?php //foreach($preferredChoice as $item): ?>

<div class="uk-width-1-5@l uk-width-1-3@m uk-width-1-2@s">
    <div class="ev-iconlist-v1 testClass">
        <a href="https://a1lands.com/investment-insights" target="_blank">
            <img src="<?php echo $urlPath->image('1.png'); ?>">
            <h4>Investment Insights</h4>
        </a>
    </div>
</div>
<div class="uk-width-1-5@l uk-width-1-3@m uk-width-1-2@s">
    <div class="ev-iconlist-v1 testClass">
        <a href="https://a1lands.com/legal-title-check" target="_blank">
            <img src="<?php echo $urlPath->image('2.png'); ?>">
            <h4>Legal Title Check</h4>
        </a>
    </div>
</div>
<div class="uk-width-1-5@l uk-width-1-3@m uk-width-1-2@s">
    <div class="ev-iconlist-v1 testClass">
        <a href="https://a1lands.com/property-valuation" target="_blank">
            <img src="<?php echo $urlPath->image('3.png'); ?>">
            <h4>Property Valuation</h4>
        </a>
    </div>
</div>
<!--<div class="uk-width-1-5@l uk-width-1-3@m uk-width-1-2@s">-->
<!--    <div class="ev-iconlist-v1 testClass">-->
<!--        <a href="https://a1lands.com/investment-hotspot" target="_blank">-->
<!--            <img src="<?php echo $urlPath->image('4.png'); ?>">-->
<!--            <h4>Investment Hotspot</h4>-->
<!--        </a>-->
<!--    </div>-->
<!--</div>-->

<!--<div class="uk-width-1-5@l uk-width-1-3@m uk-width-1-2@s">-->
<!--    <div class="ev-iconlist-v1 testClass">-->
<!--        <a href="https://a1lands.com/investment-insight" target="_blank">-->
<!--            <img src="<?php echo $urlPath->image('4.png'); ?>">-->
<!--            <h4>Investment Insight</h4>-->
<!--        </a>-->
<!--    </div>-->
<!--</div>-->

<?php //endforeach; ?>

</div>
</div>
</div>
<?php //endif; ?>
