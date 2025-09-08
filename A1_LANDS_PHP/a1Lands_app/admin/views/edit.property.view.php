<?php require'sidebar.php'; ?>

<!--Page Container--> 
<section class="page-container">
  <div class="page-content-wrapper">
  <!-- <script src="../../assets/map/js/jquery-2.1.1.min.js"></script> -->

  <script src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>

<!-- CSS and JS for our code -->
<link rel="stylesheet" type="text/css" href="../../assets/map/css/jquery-gmaps-latlon-picker.css"/>
<script src="../../assets/map/js/jquery-gmaps-latlon-picker.js"></script>
    <!--Main Content-->
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

    <div class="content sm-gutter">
      <div class="container-fluid padding-25 sm-padding-10">
        <div class="row">
          <div class="col-12">
            <div class="section-title">
              <h5><?php echo _EDITITEM; ?></h5>
            </div>
          </div>

          <div class="col-md-12">

                <div>
                  <table>
                    <tr>
                      <td><p><b><?php echo _PUBLISHED; ?> </b> <?php echo FormatDate($connect, $property['pt_date']); ?></p></td>
                      <td><p><b><?php echo _UPDATED; ?> </b> <?php echo FormatDate($connect, $property['pt_updated']); ?></p></td>
                    </tr>
                  </table>
                </div>

            <div class="form-block mb-4">
              <?php echo show_msg(); ?>
              <form enctype="multipart/form-data" action="" method="post">

               <input type="hidden" value="<?php echo $property['pt_id']; ?>" name="pt_id">
               <input type="hidden" value="<?php echo $property['tr_property']; ?>" name="tr_property">
               <input type="hidden" value="<?php echo $property['tr_id']; ?>" name="tr_id">
               <input type="hidden" value="<?php echo $property['tr_lang']; ?>" name="tr_lang">
               <input type="hidden" value="<?php echo $property['pt_agent']; ?>" name="pt_agent">
                
               <div class="form-row">
                <div class="form-group col-md-9">

                  <div class="block col-md-12">

                  <div class="row">
                  <div class="form-group col-md-4">
                       <label class="control-label"><?php echo _TABLEFIELDTYPE; ?> <span style="padding-left: 10px; color:red">*</span></label>

                       <select class="custom-select form-control" name="pt_type" 
                            id="pt_type" required="">

                        <?php
                        $trName = "";
                        foreach($types as $tp)
                        {
                          if($property['pt_type'] == $tp['pt_type_id'])
                          {
                            $trName = strtolower(trim($tp['tr_name']));
                            echo '<option value="'.$property['pt_type'].'" selected="selected">'.$tp['tr_name'].'</option>';
                          }
                          else{
                            echo '<option value="'.$tp['pt_type_id'].'">'.$tp['tr_name'].'</option>';
                          }
                        }
                        ?>

                       </select>

                     </div>
                     <div class="form-group col-md-8">
                        <label><?php echo _TABLEFIELDTITLE; ?> <span style="padding-left: 10px; color:red">*</span> </label>
                        <input type="text" value="<?php echo $property['tr_title']; ?>" name="tr_title" id="tr_title" class="form-control" required="">

                     </div>
                  </div>
                   
                    <label><?php echo _TABLEFIELDSLUG; ?></label>
                    <input type="hidden" value="<?php echo $property['tr_slug']; ?>" name="tr_slug_save">
                    <input type="text" placeholder="<?php echo $property['tr_slug']; ?>" name="tr_slug" class="form-control">

                    <label><?php echo _TABLEFIELDDESCRIPTION; ?></label>

                    <textarea type="text" class="form-control" name="tr_description"><?php echo $property['tr_description']; ?></textarea>

                    
                    <div class="row">
                      <div class="form-group col-md-4">
                        <label><?php echo _TABLEFIELDBEDS; ?> <span style="padding-left: 10px; color:red">*</span> </label>
                        <input class="form-control" name="pt_beds" id="pt_beds" value="<?php echo $property['pt_beds']; ?>" type="text" required="">
                      </div>

                      <div class="form-group col-md-4">
                        <label><?php echo _TABLEFIELDBATHS; ?> <span style="padding-left: 10px; color:red">*</span> </label>
                        <input class="form-control" name="pt_baths" id="pt_baths" value="<?php echo $property['pt_baths']; ?>" type="text" required="">
                      </div>
                    </div>

                    <div class="row">

                    <div class="form-group col-md-4">
                        <label><?php echo _TABLEFIELDAREA; ?> <span style="padding-left: 10px; color:red">*</span> </label>
                        <div class="input-group">
                          <input class="form-control" type="text" value="<?php echo $property['pt_size']; ?>" name="pt_size" required="">
                          <span class="input-group-addon text-dark pt-adon"> <?php echo $siteSettings['st_unit']; ?></span>
                        </div>
                      </div>


                     

                     <div class="form-group col-md-4">
                       <label class="control-label"><?php echo _TABLEFIELDITEMSTATUS; ?> <span style="padding-left: 10px; color:red">*</span> </label>

                       <select class="custom-select form-control" name="pt_status" required="">

                        <?php
                        foreach($status as $st)
                        {
                          if($property['pt_status'] == $st['pt_status_id'])
                          {
                            echo '<option value="'.$property['pt_status'].'" selected="selected">'.$st['tr_name'].'</option>';
                          }
                          else{
                            echo '<option value="'.$st['pt_status_id'].'">'.$st['tr_name'].'</option>';
                          }
                        }
                        ?>

                      </select>

                    </div>

                    <div class="form-group col-md-4">
                      <label><?php echo _TABLEFIELDPRICE; ?> <span style="padding-left: 10px; color:red">*</span> </label>
                      <div class="input-group">
                        <input class="form-control" type="text" value="<?php echo $property['pt_price']; ?>" name="pt_price" required="">
                        <span class="input-group-addon text-dark pt-adon"><?php echo $siteSettings['st_currency']; ?></span>
                      </div>
                    </div>
                    

                  </div>

                  <div class="row">

                  

                   <div class="form-group col-md-4">
                     <label class="control-label"><?php echo _TABLEFIELDCITY; ?> <span style="padding-left: 10px; color:red">*</span> </label>

                     <select class="custom-select form-control city" name="pt_city" required="">

                      <?php
                      foreach($cities as $ct)
                      {
                        if($property['pt_city'] == $ct['pt_city_id'])
                        {
                          echo '<option value="'.$property['pt_city'].'" selected="selected">'.$ct['tr_name'].'</option>';
                        }else{
                          echo '<option value="'.$ct['pt_city_id'].'">'.$ct['tr_name'].'</option>';
                        }
                      }
                      ?>

                    </select>

                  </div>

                  <div class="form-group col-md-4">
                    <label class="control-label"><?php echo _TABLEFIELDZONE; ?></label>
                    <select class="custom-select form-control zone" name="pt_zone">

                      <?php
                      foreach($zones as $zn)
                      {
                        if($property['pt_zone'] == $zn['pt_zone_id'])
                        {
                          echo '<option value="'.$property['pt_zone'].'" selected="selected">'.$zn['tr_name'].'</option>';
                        }else{
                          echo '<option value="'.$zn['pt_zone_id'].'">'.$zn['tr_name'].'</option>';
                        }
                      }
                      ?>

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
                    <input class="form-control" value="<?php echo $property['pt_approach']; ?>" name="pt_approach" type="text">

                  </div>
                  <div class="form-group col-md-4">
                    <label class="control-label">DISTANCE FROM ORR</label>
                    <input class="form-control" value="<?php echo $property['pt_distance']; ?>" name="pt_distance" type="text">

                  </div>
                  <div class="form-group col-md-4">
                    <label class="control-label">ROAD</label>
                    <input class="form-control" value="<?php echo $property['pt_road']; ?>" name="pt_road" type="text">

                  </div>
                  <div class="form-group col-md-4">
                    <label class="control-label">ROUTE</label>
                    <input class="form-control" value="<?php echo $property['pt_route']; ?>" name="pt_route" type="text">

                  </div>
                  <div class="form-group col-md-4">
                    <label class="control-label">SOIL TYPE</label>
                    <input class="form-control" value="<?php echo $property['pt_soil']; ?>" name="pt_soil" type="text">

                  </div>
                  <div class="form-group col-md-4">
                    <label class="control-label">ELECTRICITY</label>
                    <input class="form-control" value="<?php echo $property['pt_electricity']; ?>" name="pt_electricity" type="text">

                  </div>
                  <div class="form-group col-md-4">
                    <label class="control-label">CROP/PLANTATION</label>
                    <input class="form-control" value="<?php echo $property['pt_crop']; ?>" name="pt_crop" type="text">

                  </div>
                  <div class="form-group col-md-4">
                    <label class="control-label">ZONE</label>
                    <input class="form-control" value="<?php echo $property['pt_zone']; ?>" name="pt_zone" type="text">

                  </div>
                  <div class="form-group col-md-4">
                    <label class="control-label">BORE/WELL</label>
                    <input class="form-control" value="<?php echo $property['pt_bore']; ?>" name="pt_bore" type="text">

                  </div>
                  <div class="form-group col-md-4">
                    <label class="control-label">FENCING</label>
                    <input class="form-control" value="<?php echo $property['pt_fancing']; ?>" name="pt_fancing" type="text">

                  </div>

                  <div class="form-group col-md-4">
                    <label class="control-label">BUILDING</label>
                    <input class="form-control" value="<?php echo $property['pt_building']; ?>" name="pt_building" type="text">

                  </div>

                  
                  
                  <div class="form-group col-md-4">
                     <label class="control-label"><?php echo _TABLEFIELDMANDAL; ?> <span style="padding-left: 10px; color:red">*</span> </label>

                     <select class="custom-select form-control mandal" name="pt_mandal" required="">

                      <?php
                      foreach($mandal as $ct)
                      {
                        if($property['pt_mandal'] == $ct['pt_mandal_id'])
                        {
                          echo '<option value="'.$property['pt_mandal'].'" selected="selected">'.$ct['tr_name'].'</option>';
                        }else{
                          echo '<option value="'.$ct['pt_mandal_id'].'">'.$ct['tr_name'].'</option>';
                        }
                      }
                      ?>

                    </select>

                  </div>
                  
                  <div class="form-group col-md-4">
                    <label class="control-label"><?php echo _VILLAGE; ?></label>
                    <select class="custom-select form-control village" name="pt_village">

                      <?php
                      foreach($village as $zn)
                      {
                        if($property['pt_village'] == $zn['pt_village_id'])
                        {
                          echo '<option value="'.$property['pt_village'].'" selected="selected">'.$zn['tr_name'].'</option>';
                        }else{
                          echo '<option value="'.$zn['pt_village_id'].'">'.$zn['tr_name'].'</option>';
                        }
                      }
                      ?>

                    </select>
                  </div>

                  <div class="col-md-4">
                    <label class="control-label"><?php echo _TABLEFIELDCONDITION; ?> <span style="padding-left: 10px; color:red">*</span> </label>

                    <select class="custom-select form-control" name="pt_conditions" required="">

                      <?php
                      foreach($conditions as $cn)
                      {
                        if($property['pt_conditions'] == $cn['pt_conditions_id']){
                          echo '<option value="'.$property['pt_conditions'].'" selected="selected">'.$cn['tr_name'].'</option>';
                        }else{
                          echo '<option value="'.$cn['pt_conditions_id'].'">'.$cn['tr_name'].'</option>';
                        }
                      }
                      ?>

                    </select>
                  </div>

                  <div class="form-group col-md-4">
                   <label class="control-label"><?php echo _TABLEFIELDFEATURED; ?> <span style="padding-left: 10px; color:red">*</span> </label>

                   <select class="custom-select form-control" name="pt_featured" required="">
                    <?php
                    if($property['pt_featured'] == 1){
                      echo '<option value="1" selected="selected">'._YESTEXT.'</option>';
                      echo '<option value="0">'._NOTEXT.'</option>';

                    }else{
                      echo '<option value="0" selected="selected">'._NOTEXT.'</option>';
                      echo '<option value="1">'._YESTEXT.'</option>';
                    }
                    ?>
                  </select>

                </div>

                </div>

                
              <div class="row">

                <div class="form-group col-md-4">
                  <label><?php echo _TABLEFIELDADDRESS; ?></label>
                  <input class="form-control" value="<?php echo $property['pt_direction']; ?>" name="pt_direction" type="text">
                </div>

                <div class="form-group col-md-4">
                  <label><?php echo _TABLEFIELDLATITUDE; ?></label>
                  <input class="form-control pt_latitude" value="<?php echo $property['pt_latitude']; ?>" name="pt_latitude" type="text">
                  <i class="dripicons-skip text-secondary"></i>
                  <label class="text-secondary"><a href="https://www.latlong.net/" class="text-secondary" target="_blank"><?php echo _FINDCOORDINATES; ?></a></label>
                </div>

                <div class="form-group col-md-4">
                  <label><?php echo _TABLEFIELDLONGITUDE; ?></label>
                  <input class="form-control pt_longitude" value="<?php echo $property['pt_longitude']; ?>" name="pt_longitude" type="text">
                  <i class="dripicons-skip text-secondary"></i>
                  <label class="text-secondary"><a href="https://www.latlong.net/" class="text-secondary" target="_blank"><?php echo _FINDCOORDINATES; ?></a></label>
                </div>

              </div>

              <div class="row">
                
                <div class="col-md-4">
                 <label><?php echo _TABLEFIELDPRICELABEL; ?></label>
                 <input class="form-control" type="text" placeholder="<?php echo _FOREXAMPLEMONTHLY; ?>" value="<?php echo $property['tr_label'] ?>" name="tr_label">
               </div>

               <div class="col-md-4">
                 <label><?php echo _TABLEFIELDGARAGES; ?></label>
                 <input class="form-control" type="text" name="pt_garages" value="<?php echo $property['pt_garages']; ?>">
               </div>

               <div class="col-md-4">
                 <label><?php echo _TABLEFIELDFLOOR; ?></label>
                 <input class="form-control" type="text" name="pt_floor" value="<?php echo $property['pt_floor']; ?>">
               </div>

             </div>

             <br>
            
             <div class="row">
               
                <div class="col-md-4">
                 <label><?php echo _TABLEFIELDOFFER; ?></label>
                   <select class="custom-select form-control" name="pt_offer">
                    <option value="0" <?php if($property['pt_offer'] == '0'){ echo 'selected="selected"'; } ?>><?php echo _NOTEXT; ?></option>
                    <option value="1" <?php if($property['pt_offer'] == '1'){ echo 'selected="selected"'; } ?>><?php echo _YESTEXT; ?></option>
                   </select>
               </div>

               <div class="col-md-4">
                 <label><?php echo _TABLEFIELDOLDPRICE; ?></label>
                 <div class="input-group">
                   <input class="form-control" type="text" name="pt_oldprice" value="<?php echo $property['pt_oldprice']; ?>">
                   <span class="input-group-addon text-dark pt-adon"><?php echo $siteSettings['st_currency']; ?></span>
                 </div>
               </div>

             </div>
             

              <br>

               <div class="row">

                <div class="col-md-12">
                  <label class="control-label"><?php echo _TABLEFIELDVIDEOURL; ?></label>
                  <input class="form-control" type="text" value="<?php echo $property['pt_video']; ?>" name="pt_video">
                </div>

              </div>

              <br>
              <?php 
                $features = json_decode($property['top_features'], true);
              ?>
              <h4>Top Features</h4>
              <div id="features-wrapper">
                 <?php foreach ($features as $feature){ ?>
                    <div class="feature-item d-flex mb-2">
                        <input type="text" name="features[title][]" class="form-control me-2" value="<?php echo $feature['title']; ?>" placeholder="Title" required>
                        <input type="text" name="features[description][]" class="form-control me-2" value="<?php echo $feature['description']; ?>"  placeholder="Description" required>
                        <button type="button" class="btn btn-danger remove-feature">X</button>
                    </div>
                  <?php } ?>
              </div>
              <button type="button" class="btn btn-primary" id="add-feature">Add More</button>

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
                  foreach ($propertyextras as $ex) {
                    ?>  
                    <div class="col-md-<?php echo $bootstrapColWidth; ?>" style="margin-bottom: 20px; margin-top: 0px;">

                      <div class="pretty p-default p-curve p-bigger">
                        <input type="checkbox" name="pe_extra[]" value="<?php echo $ex['pt_extra_id']; ?>" checked />
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

                <?php

                $numOfCols = 4;
                $rowCount = 0;
                $bootstrapColWidth = 12 / $numOfCols;
                ?>
                <div class="row">
                  <?php
                  foreach ($extras as $ex) {
                    ?>  
                    <div class="col-md-<?php echo $bootstrapColWidth; ?>" style="margin-bottom: 20px; margin-top: 0px;">

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

              <label><?php echo _TABLEFIELDGALLERY; ?></label>

              <div class="gallery">
               <?php foreach($gallery as $gallery_image): ?>
                <div class="image">
                 <div class="badge-container" style="background:url(../../images/<?php echo $gallery_image['pg_name']; ?>);">
                  <a class="deleteItem" data-url="../controller/delete_gallery_image.php?id=<?php echo $gallery_image['pg_id']; ?>">
                    <div class="badge_gallery badge-red"><i class="fa fa-times" aria-hidden="true"></i></div>
                  </div></a>
                </div>

              <?php endforeach; ?>
            </div>

            <input name="files" class="input-file" type="file">

          </div>
        </div>

        <div class="form-group col-md-3 sidebar">

         <div class="block col-md-12">

           <label class="control-label"><?php echo _TABLEFIELDLANG; ?></label>

           <select class="custom-select form-control" name="tr_lang" required="" disabled="">
            <?php
            foreach($languages as $language)
            {
              if($property['tr_lang'] == $language['language_code'])
              {
                echo '<option value="'.$property['tr_lang'].'" selected="selected">'.$language['language_name'].'</option>';
              }
            }
            ?>
          </select>

          <div class="card">

           <label class="control-label"><?php echo _TRANSLATIONSITEM; ?></label>


           <?php if( !empty($activelanguages)): ?>

            <div class="trlanguages">
              <p><?php echo _DUPLICATETRANSLATIONITEM; ?></p>
              <table class="table">

                <?php foreach ($activelanguages as $language) if ($language['language_code'] != $property['tr_lang']) { ?>  
                 <tr>
                   <td align="left"><?php echo $language['language_name']; ?></td>
                   <td align="right"><a class="addIcon duplicateItem" data-url="../controller/duplicate_property.php?lang=<?php echo $property['tr_lang']; ?>&id=<?php echo $property['pt_id']; ?>&to=<?php echo $language['language_code']; ?>"><i class="fa fa-plus-square-o"></i></a></td>
                 </tr>

                 <?php 
               }elseif(count($languages) <= 1){
                echo "<span class='notranslations'>"._NOTRANSLATIONSFOUNDITEM."</span>";
              }
              ?>

            </table>
          </div>
        <?php endif; ?>


        <?php if( !empty($languages)): ?>

          <div class="trlanguages">
            <p><?php echo _EDITTRANSLATIONITEM; ?></p>
            <table class="table">
                      <?php foreach ($languages as $language) if ($language['language_code'] != $property['tr_lang']) { ?>  
                       
                        <tr>
                         <td align="left"><?php echo $language['language_name']; ?></td>
                         <td align="right"><a href="../controller/edit_property.php?lang=<?php echo $language['language_code']; ?>&id=<?php echo $property['pt_id']; ?>" class="addIcon"><i class="fa fa-edit"></i></a></td>
                       </tr>
                       <?php 
                     }elseif(count($languages) <= 1){
                      echo "<span class='notranslations'>"._NOTRANSLATIONSFOUNDITEM."</span>";
                    }
                    ?>

           </table>
         </div>
       <?php endif; ?>

       <?php if( !empty($languages)): ?>

        <div class="trlanguages">
          <p><?php echo _DELETETRANSLATIONITEM; ?></p>
          <table class="table">

            <?php foreach ($languages as $language) { ?>  
             <tr>
               <td align="left"><?php echo $language['language_name']; ?></td>
               <td align="right"><a class="addIcon deleteItem" data-url="../controller/delete_tr_property.php?lang=<?php echo $language['language_code']; ?>&id=<?php echo $property['pt_id']; ?>"><i class="fa fa-trash-o"></i></a></td>
             </tr>
           <?php } ?>

         </table>
       </div>
     <?php endif; ?>

   </div>

 </div>

 <div class="block col-md-12">
   <label><?php echo _TABLEFIELDSTATUS; ?></label>

  <select class="custom-select form-control" name="pt_visibility" required="">
  <?php
  if($property['pt_visibility'] == 1){
    echo '<option value="1" selected="selected">'._ENABLED.'</option>';
    echo '<option value="0">'._DISABLED.'</option>';

  } else{
    echo '<option value="0" selected="selected">'._DISABLED.'</option>';
    echo '<option value="1">'._ENABLED.'</option>';
  }
  ?>
  </select>

</div>

<div class="block col-md-12">
  <label><?php echo _TABLEFIELDIMAGE; ?></label>

  <div class="new-image" id="image-preview" style="background: url(../../images/<?php echo $property['pt_image'] ?>);">
    <label for="image-upload" id="image-label"><?php echo _CHOOSEFILE; ?></label>
    <input type="hidden" value="<?php echo $property['pt_image']; ?>" name="pt_image_save">
    <input type="file" name="pt_image" id="image-upload" />
  </div>

  <span class="text-danger recomendedsize"><?php echo _RECOMMENDEDSIZE; ?> <b>650 x 350</b> </span>
  <br/>
</div>

<button class="btn btn-primary" type="submit" name="save"><?php echo _UPDATEITEM; ?></button>
<button class="btn btn-danger deleteItem" type="button" data-url="../controller/delete_property.php?id=<?php echo $property['pt_id']; ?>" data-redirect="../controller/properties.php"><?php echo _DELETEITEM; ?></button>

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
			<input type="text" class="gllpLatitude" value="20"/>
			/
			<input type="text" class="gllpLongitude" value="20"/>
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