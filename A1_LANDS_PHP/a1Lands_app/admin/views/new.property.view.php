<?php require'sidebar.php'; ?>

<!--Page Container--> 
<section class="page-container">
  <div class="page-content-wrapper">
  <!-- <script src="../../assets/map/js/jquery-2.1.1.min.js"></script> -->

  <script src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>

<!-- CSS and JS for our code -->
<link rel="stylesheet" type="text/css" href="../../assets/map/css/jquery-gmaps-latlon-picker.css"/>
<script src="../../assets/map/js/jquery-gmaps-latlon-picker.js"></script>

<script>
$(document).ready(function() {

  if(document.getElementById('pt_type')){
    let selected = document.getElementById('pt_type').value.trim().toLowerCase();
    let beds = document.getElementById('pt_beds');
    let baths = document.getElementById('pt_baths');
    if (selected === '2' || selected === '9') {
        beds.readOnly = true;
        baths.readOnly = true;
        beds.value = '0';
        baths.value = '0';
    } else {
        beds.readOnly = false;
        baths.readOnly = false;
        beds.value = '0';
        baths.value = '0';
    }
  }

  document.getElementById('pt_type').addEventListener('change', function () {
    let selected = this.value.trim().toLowerCase();
    let beds = document.getElementById('pt_beds');
    let baths = document.getElementById('pt_baths');

    if (selected === '2' || selected === '9') {
        beds.readOnly = true;
        baths.readOnly = true;
        beds.value = '0';
        baths.value = '0';
    } else {
        beds.readOnly = false;
        baths.readOnly = false;
        beds.value = '0';
        baths.value = '0';
    }
  });
});
</script>
    <!--Main Content-->

    <div class="content sm-gutter">
      <div class="container-fluid padding-25 sm-padding-10">
        <div class="row">
          <div class="col-12">
            <div class="section-title">
               <h5><?php echo _ADDITEM; ?></h5>
            </div>
          </div>

          <div class="col-md-12">
            <div class="form-block mb-4">

              <form enctype="multipart/form-data" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" method="post">

               <input type="hidden" value="<?php echo $check_access['user_id']; ?>" name="pt_agent">

               <div class="form-row">
                <div class="form-group col-md-9">
                  <div class="block col-md-12">
                   
                  <div class="row">
             
                          <div class="form-group col-md-4">
                            <label class="control-label"><?php echo _TABLEFIELDTYPE; ?><span style="padding-left: 10px; color:red">*</span></label>

                            <select class="custom-select form-control" name="pt_type" id="pt_type" required="" >
                              <option selected="">-</option>

                              <?php foreach($types as $tp): ?>
                                <option value="<?php echo $tp['pt_type_id']; ?>"><?php echo $tp['tr_name']; ?></option>
                              <?php endforeach; ?>
                            </select>

                          </div>
                
                      <div class="form-group col-md-8">
                         <label><?php echo _TABLEFIELDTITLE; ?> <span style="padding-left: 10px; color:red">*</span></label>
                        <input type="text" placeholder="" name="tr_title" class="form-control" required="">

                      </div>

                  </div>
                   
                    <label><?php echo _TABLEFIELDDESCRIPTION; ?></label>

                    <textarea type="text" class="form-control" name="tr_description" id="tr_description"></textarea>

                    <div class="row">
                      
                      <div class="form-group col-md-4">
                        <label><?php echo _TABLEFIELDBEDS; ?><span style="padding-left: 10px; color:red">*</span></label>
                        <input class="form-control" value="" name="pt_beds" id="pt_beds" type="text" required="">
                      </div>

                      <div class="form-group col-md-4">
                        <label><?php echo _TABLEFIELDBATHS; ?><span style="padding-left: 10px; color:red">*</span></label>
                        <input class="form-control" value="" name="pt_baths" id="pt_baths" type="text" required="">
                      </div>
                    </div>

                    <div class="row">
                    <div class="form-group col-md-4">
                        <label><?php echo _TABLEFIELDAREA; ?> <span style="padding-left: 10px; color:red">*</span> </label>
                        <div class="input-group">
                          <input class="form-control" type="text" name="pt_size" required="">
                          <span class="input-group-addon text-dark pt-adon"> <?php echo $siteSettings['st_unit']; ?></span>
                        </div>
                      </div>

                      

                     <div class="form-group col-md-4">
                       <label class="control-label"><?php echo _TABLEFIELDITEMSTATUS; ?> <span style="padding-left: 10px; color:red">*</span> </label>

                       <select class="custom-select form-control" name="pt_status" required="">
                         <option selected="">-</option>
                         
                         <?php foreach($status as $st): ?>
                           <option value="<?php echo $st['pt_status_id']; ?>"><?php echo $st['tr_name']; ?></option>
                         <?php endforeach; ?>
                       </select>

                     </div>


                    <div class="form-group col-md-4">
                     <label class="control-label"><?php echo _TABLEFIELDCITY; ?> <span style="padding-left: 10px; color:red">*</span> </label>

                     <select class="custom-select form-control city" name="pt_city" required="">
                       <option selected="">-</option>
                       <?php foreach($cities as $ct): ?>
                         <option value="<?php echo $ct['pt_city_id']; ?>"><?php echo $ct['tr_name']; ?></option>
                       <?php endforeach; ?>
                     </select>

                   </div>

                   <div class="form-group col-md-4">
                    <label class="control-label"><?php echo _TABLEFIELDZONE; ?> </label>
                    <select class="custom-select form-control zone" name="pt_zone">
                      <option selected="selected">-</option>
                    </select>
                  </div>
                  
                  <div class="form-group col-md-4">
                     <label class="control-label"><?php echo _TABLEFIELDMANDAL; ?> <span style="padding-left: 10px; color:red">*</span> </label>

                     <select class="custom-select form-control mandal" name="pt_mandal" required="">
                       <option selected="">-</option>
                       <?php foreach($mandal as $mn): ?>
                         <option value="<?php echo $mn['pt_mandal_id']; ?>"><?php echo $mn['tr_name']; ?></option>
                       <?php endforeach; ?>
                     </select>

                   </div>
                   
                   <div class="form-group col-md-4">
                    <label class="control-label"><?php echo _VILLAGE; ?></label>
                    <select class="custom-select form-control village" name="pt_village">
                      <option selected="selected">-</option>
                    </select>
                  </div>

                  <!--  Custome Fields -->
                  <div class="form-group col-md-4">
                    <label class="control-label">APPROACH ROAD</label>
                    <input class="form-control" value="" name="pt_approach" type="text">

                  </div>
                  <div class="form-group col-md-4">
                    <label class="control-label">DISTANCE FROM ORR</label>
                    <input class="form-control" value="" name="pt_distance" type="text">

                  </div>
                  <div class="form-group col-md-4">
                    <label class="control-label">ROAD</label>
                    <input class="form-control" value="" name="pt_road" type="text">

                  </div>
                  <div class="form-group col-md-4">
                    <label class="control-label">ROUTE</label>
                    <input class="form-control" value="" name="pt_route" type="text">

                  </div>
                  <div class="form-group col-md-4">
                    <label class="control-label">SOIL TYPE</label>
                    <input class="form-control" value="" name="pt_soil" type="text">

                  </div>
                  <div class="form-group col-md-4">
                    <label class="control-label">ELECTRICITY</label>
                    <input class="form-control" value="" name="pt_electricity" type="text">

                  </div>
                  <div class="form-group col-md-4">
                    <label class="control-label">CROP/PLANTATION</label>
                    <input class="form-control" value="" name="pt_crop" type="text">

                  </div>
                  <div class="form-group col-md-4">
                    <label class="control-label">ZONE</label>
                    <input class="form-control" value="" name="pt_zone" type="text">

                  </div>
                  <div class="form-group col-md-4">
                    <label class="control-label">BORE/WELL</label>
                    <input class="form-control" value="" name="pt_bore" type="text">

                  </div>
                  <div class="form-group col-md-4">
                    <label class="control-label">FENCING</label>
                    <input class="form-control" value="" name="pt_fancing" type="text">

                  </div>

                  <div class="form-group col-md-4">
                    <label class="control-label">BUILDING</label>
                    <input class="form-control" value="" name="pt_building" type="text">

                  </div>



                  </div>

                  <div class="row">
                    
                     <div class="form-group col-md-4">
                     <label class="control-label"><?php echo _TABLEFIELDENERGY; ?></label>
                     <select class="custom-select form-control" name="pt_rating">
                       <option value="-">-</option>
                       <option value="a">A</option>
                       <option value="b">B</option>
                       <option value="c">C</option>
                       <option value="d">D</option>
                       <option value="e">E</option>
                       <option value="f">F</option>
                       <option value="g">G</option>
                     </select>
                   </div>

                  

                </div>

                <div class="row">

                  <div class="form-group col-md-4">
                   <label class="control-label"><?php echo _TABLEFIELDCONDITION; ?> <span style="padding-left: 10px; color:red">*</span> </label>

                   <select class="custom-select form-control" name="pt_conditions" required="">
                     <option value="" selected="">-</option>
                     <?php foreach($conditions as $cn): ?>
                       <option value="<?php echo $cn['pt_conditions_id']; ?>"><?php echo $cn['tr_name']; ?></option>
                     <?php endforeach; ?>
                   </select>

                 </div>

                 <div class="form-group col-md-4">
                   <label class="control-label"><?php echo _TABLEFIELDFEATURED; ?></label>
                   <select class="custom-select form-control" name="pt_featured">
                     <option value="0"><?php echo _NOTEXT; ?></option>
                     <option value="1"><?php echo _YESTEXT; ?></option>
                   </select>
                 </div>

                  <div class="form-group col-md-4">
                  <label><?php echo _TABLEFIELDREFERENCE; ?> </label>
                  <input class="form-control" type="text" name="pt_reference">
                </div> 

              </div>

              <div class="row">
                
                <div class="form-group col-md-4">
                  <label><?php echo _TABLEFIELDADDRESS; ?></label>
                  <input class="form-control" value="" name="pt_direction" type="text">
                </div>

                <div class="form-group col-md-4">
                  <label><?php echo _TABLEFIELDLATITUDE; ?></label>
                  <input class="form-control pt_latitude" value="" name="pt_latitude" type="text">
                  <i class="dripicons-skip text-secondary"></i>
                  <label class="text-secondary">
                    <a href="https://www.latlong.net/" class="text-secondary" target="_blank">
                        <?php echo _FINDCOORDINATES; ?>
                    </a>
                  </label>
                </div>

                <div class="form-group col-md-4">
                  <label><?php echo _TABLEFIELDLONGITUDE; ?></label>
                  <input class="form-control pt_longitude" value="" name="pt_longitude" type="text">
                  <i class="dripicons-skip text-secondary"></i>
                  <label class="text-secondary">
                    <a href="https://www.latlong.net/" class="text-secondary" target="_blank">
                      <?php echo _FINDCOORDINATES; ?>
                    </a>
                  </label>
                </div>

              </div>

              <div class="row">
                
                 <div class="col-md-4">
                  <label><?php echo _TABLEFIELDPRICELABEL; ?></label>
                  <input class="form-control" type="text" placeholder="<?php echo _FOREXAMPLEMONTHLY; ?>" value="" name="tr_label">
                </div>

                <div class="col-md-4">
                  <label><?php echo _TABLEFIELDGARAGES; ?></label>
                  <input class="form-control" type="text" name="pt_garages">
                </div>

                <div class="col-md-4">
                  <label><?php echo _TABLEFIELDFLOOR; ?></label>
                  <input class="form-control" type="text" name="pt_floor">
                </div>

              </div>

              <br>
             
              <div class="row">
                
                 <div class="col-md-4">
                  <label><?php echo _TABLEFIELDOFFER; ?></label>
                    <select class="custom-select form-control" name="pt_offer">
                     <option value="0"><?php echo _NOTEXT; ?></option>
                     <option value="1"><?php echo _YESTEXT; ?></option>
                    </select>
                </div>

                <div class="col-md-4">
                  <label><?php echo _TABLEFIELDOLDPRICE; ?></label>
                  <div class="input-group">
                    <input class="form-control" type="text" name="pt_oldprice">
                    <span class="input-group-addon text-dark pt-adon"><?php echo $siteSettings['st_currency']; ?></span>
                  </div>
                </div>

              </div>

             <br>

              <div class="row">
                <div class="col-md-12">
                  <label class="control-label"><?php echo _TABLEFIELDVIDEOURL; ?></label>
                  <input class="form-control" type="text" placeholder="oSmUI3m2kLk" name="pt_video">
                </div>
              </div>

              <br>

              <h4>Top Features</h4>
              <div id="features-wrapper">
                  <div class="feature-item d-flex mb-2">
                      <input type="text" name="features[title][]" class="form-control me-2" placeholder="Title" required>
                      <input type="text" name="features[description][]" class="form-control me-2" placeholder="Description" required>
                      <button type="button" class="btn btn-danger remove-feature">X</button>
                  </div>
              </div>
              <button type="button" class="btn btn-primary" id="add-feature">Add More</button>

              <br>
              <br>

              <fieldset>
                <legend><?php echo _EXTRAS; ?></legend>
                <?php

                $numOfCols = 4;
                $rowCount = 0;
                $bootstrapColWidth = 12 / $numOfCols;
                ?>
                <div class="row">
                  <?php
                  foreach ($extras as $ex) {
                    ?>  
                    <div class="col-md-<?php echo $bootstrapColWidth; ?> extras-content">
                      
                      <div class="pretty p-default p-curve p-bigger">
                        <input type="checkbox" name="pe_extra[]" value="<?php echo $ex['pt_extra_id']; ?>" />
                        <div class="state p-success">
                          <label><?php echo $ex['tr_name']; ?></label>
                        </div>
                      </div>
                      
                    </div>
                    <?php
                    $rowCount++;
                    if($rowCount % $numOfCols == 0) echo '</div><div class="row">';
                  }
                  ?>

                </div>
              </fieldset>

              <br>

              <br>

              <label><?php echo _TABLEFIELDGALLERY; ?></label>

              <input name="files" class="input-file" type="file">


            </div>
          </div>
          <div class="form-group col-md-3 sidebar">
           
           <div class="block col-md-12">

             <label class="control-label"><?php echo _TABLEFIELDLANG; ?></label>

             <select class="custom-select form-control" name="tr_lang" required="">
               <?php foreach($languages as $language): ?>
                 <option value="<?php echo $language['language_code']; ?>"><?php echo $language['language_name']; ?></option>
               <?php endforeach; ?>
             </select>

           </div>

           <div class="block col-md-12">
            <label><?php echo _TABLEFIELDIMAGE; ?></label>

            <div class="new-image" id="image-preview">
              <label for="image-upload" id="image-label"><?php echo _CHOOSEFILE; ?></label>
              <input type="file" name="pt_image" id="image-upload" required="" />
            </div>

            <span class="text-danger recomendedsize"><?php echo _RECOMMENDEDSIZE; ?> <b>650 x 350</b> </span>
            <br/>
          </div>

          <button class="btn btn-primary" type="submit" name="save"><?php echo _SAVECHANGES; ?></button>

        </div>
      </div>

    </form>
  </div>
  <fieldset class="gllpLatlonPicker">
		<input type="text" class="gllpSearchField">
		<input type="button" class="gllpSearchButton" value="search">
		<br/><br/>
		<div class="gllpMap">Google Maps</div>
		<br/>
		lat/lon:
			<input type="text" class="gllpLatitude" value="17.385044"/>
			/
			<input type="text" class="gllpLongitude" value="78.486671"/>
		zoom: <input type="text" class="gllpZoom" value="3"/>
		<input type="button" class="gllpUpdateButton" value="update map">
		<br/>
	</fieldset>
</div>
</div>
</div>
</div>
</div>
</section>
<script>
  $(document).ready(function () {
        // let featureIndex = 1;

        $('#add-feature').click(function () {
            let featureHTML = `
                <div class="feature-item d-flex mb-2">
                    <input type="text" name="features[title][]" class="form-control me-2" placeholder="Title" required>
                    <input type="text" name="features[description][]" class="form-control me-2" placeholder="Description" required>
                    <button type="button" class="btn btn-danger remove-feature">X</button>
                </div>
            `;

            $('#features-wrapper').append(featureHTML);
            // featureIndex++;
        });

        $(document).on('click', '.remove-feature', function () {
            $(this).closest('.feature-item').remove();
        });
    });
</script>