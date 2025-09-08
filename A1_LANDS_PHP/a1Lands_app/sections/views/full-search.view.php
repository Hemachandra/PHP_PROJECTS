<div class="ev-section-light ev-bottom-border  uk-hidden@s">
  <div class="ev-container ev-section-padding-v-m ev-advanced-search">
        <div class="uk-flex-center">
            <div class="uk-card uk-card-default uk-card-body uk-width-1-2@m" style="margin:auto;">
                <h1 class="uk-text-center">Are you looking to</h1>
                <!-- <button  uk-toggle="target: #modal-example" class="uk-button uk-button-default uk-width-1-1 uk-margin-small-bottom">Buy Land</button> -->
                 <?php if (isLogged()) { ?>
                        <!-- <button class="uk-button uk-button-primary uk-width-1-1 uk-margin-small-bottom" onclick="location.href='<?php echo SITE_URL ?>/admin/controller/new_property.php'">Sell Land</button> -->
                    <?php } else { ?>
                        <!-- <button onclick="location.href='<?php echo SITE_URL ?>/signin'" class="uk-button uk-button-primary uk-width-1-1 uk-margin-small-bottom">Sell Land</button> -->
                
                <?php } ?>
                <button  uk-toggle="target: #modal-example" class="uk-button uk-button-default uk-width-1-1 uk-margin-small-bottom">Apparment</button>
                <button  uk-toggle="target: #modal-example" class="uk-button uk-button-default uk-width-1-1 uk-margin-small-bottom">Villa</button>
                <button class="uk-button uk-button-default uk-width-1-1 uk-margin-small-bottom">Plots</button>
                <button class="uk-button uk-button-default uk-width-1-1 uk-margin-small-bottom">Land</button>


            </div>
        </div>

    </div>
</div>


<div class="ev-section-light ev-bottom-border uk-hidden@s">
  <div class="ev-container ev-section-padding-v-m ev-advanced-search">
        <div class="uk-flex-center">
            <div class="uk-card uk-card-default uk-card-body uk-width-1-2@m" style="margin:auto;">
               
                   <button class="uk-button uk-button-default uk-width-1-1 uk-margin-small-bottom" onclick="location.href='<?php echo SITE_URL ?>/specialproperties'">Premium Lands</button>
                   <button onclick="location.href='<?php echo SITE_URL ?>/properties'" class="uk-button uk-button-primary uk-width-1-1 uk-margin-small-bottom">All Properties</button>
                
            </div>
        </div>

    </div>
</div>



<div class="ev-section-light ev-bottom-border">
  <div class="ev-container ev-section-padding-v-m ev-advanced-search" style="margin-top:-90px">
   
  <form class="uk-grid-small" method="get" action="<?php echo $urlPath->search(); ?>" id="searchForm" uk-grid>
    <div class="uk-width-expand@m" style="z-index:99;">
        <div class="uk-margin">
            <div class="uk-inline uk-width-1-1">
                <label class="uk-form-label uk-hidden@m"><?php echo echoOutput($translation['tr_13']); ?></label>
                <select class="nc-select wide uk-form-large" id="cityDropdown" name="city">
                     <option value="">Select State</option> 

                    <?php foreach($cities as $item): ?> 
                        <option value="<?php echo $item['pt_city_id']; ?>"><?php echo echoOutput($item['tr_name']); ?></option> 
                    <?php endforeach; ?>
                </select>
            </div>
        </div>
    </div>

    <div class="uk-width-expand@m" style="z-index:99;">
        <div class="uk-margin">
            <div class="uk-inline uk-width-1-1">
                <label class="uk-form-label uk-hidden@m"><?php echo echoOutput($translation['tr_13']); ?></label>
                <select class="nc-select wide uk-form-large" required id="zoneDropdown" name="zone">
                        <option value="">Select District</option> 
                </select>
            </div>
        </div>
    </div>

    <div class="uk-width-expand@m" style="z-index:99;">
        <div class="uk-margin">
            <div class="uk-inline uk-width-1-1">
                <label class="uk-form-label uk-hidden@m"><?php echo echoOutput($translation['tr_112']); ?></label>
                <input class="uk-input uk-form-large uk-border-rounded" name="reference" placeholder="Enter a district or mandal" type="text">
            </div>
        </div>
    </div>

    <div class="uk-width-auto@m" style="z-index:99;">
        <div class="uk-margin">
            <button class="uk-button uk-button-primary uk-button-large uk-border-rounded uk-width-1-1" type="submit">
                <?php echo echoOutput($translation['tr_22']); ?> <i class="fa fa-angle-right uk-margin-small-left"></i>
            </button>
        </div>
    </div>
</form>

  </div>
</div>




<div class="ev-section-light ev-bottom-border  uk-visible@m">
  <div class="ev-container ev-section-padding-v-m ev-advanced-search">
        <div class="uk-flex-center">
            <div class="uk-card uk-card-default uk-card-body uk-width-1-2@m" style="margin:auto;">
                <h1 class="uk-text-center">Are you looking to</h1>
                 <?php if (isLogged()) { ?>
                        <!-- <button class="uk-button uk-button-primary uk-width-1-1 uk-margin-small-bottom" onclick="location.href='<?php echo SITE_URL ?>/admin/controller/new_property.php'">Sell Land</button> -->
                    <?php } else { ?>
                        <!-- <button onclick="location.href='<?php echo SITE_URL ?>/signin'" class="uk-button uk-button-primary uk-width-1-1 uk-margin-small-bottom">Sell Land</button> -->
                
                <?php } ?>
                <button  uk-toggle="target: #modal-example" class="uk-button uk-button-default uk-width-1-1 uk-margin-small-bottom">Apparment</button>
                <button  uk-toggle="target: #modal-example" class="uk-button uk-button-primary uk-width-1-1 uk-margin-small-bottom">Villa</button>
                <button class="uk-button uk-button-default uk-width-1-1 uk-margin-small-bottom">Plots</button>
                <button class="uk-button uk-button-primary uk-width-1-1 uk-margin-small-bottom">Land</button>


            </div>
        </div>

    </div>
</div>





<!-- This is the modal -->
<div id="modal-example" uk-modal>
    <div class="uk-modal-dialog uk-modal-body">
        <h2 class="uk-modal-title">Looking for ?</h2>
        <p class="uk-text-center">
          <button onclick="location.href='<?php echo SITE_URL ?>/search?extras%5B%5D=1'" class="uk-button uk-button-default uk-width-1-1 uk-margin-small-bottom">New Launch</button>
          <button onclick="location.href='<?php echo SITE_URL ?>/search?extras%5B%5D=2'" class="uk-button uk-button-primary uk-width-1-1 uk-margin-small-bottom">Under Construction</button>
          <button onclick="location.href='<?php echo SITE_URL ?>/search?extras%5B%5D=2'" class="uk-button uk-button-default uk-width-1-1 uk-margin-small-bottom">Ready to Move</button>
          <button onclick="location.href='<?php echo SITE_URL ?>/search?extras%5B%5D=2'" class="uk-button uk-button-primary uk-width-1-1 uk-margin-small-bottom">Owner</button>
        </p>
    </div>
</div>