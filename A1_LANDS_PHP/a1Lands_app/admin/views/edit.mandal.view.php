<?php require'sidebar.php'; ?>

<!--Page Container--> 
<section class="page-container">
  <div class="page-content-wrapper">

    <!--Main Content-->

    <div class="content sm-gutter">
      <div class="container-fluid padding-25 sm-padding-10">
        <div class="row">
          <div class="col-12">
            <div class="section-title">
              <h5><?php echo _EDITITEM; ?></h5>
            </div>
          </div>

          <div class="col-md-12">
            <div class="form-block mb-4">

              <form enctype="multipart/form-data" action="" method="post">

                <div class="form-row">
                  <div class="form-group col-md-9">
                    <div class="block col-md-12 padding-bottom-35">
                     <input type="hidden" value="<?php echo $mandal['pt_mandal_id']; ?>" name="pt_mandal_id">
                     <input type="hidden" value="<?php echo $mandal['tr_mandal']; ?>" name="tr_mandal">
                     <input type="hidden" value="<?php echo $mandal['tr_id']; ?>" name="tr_id">
                     <input type="hidden" value="<?php echo $mandal['tr_lang']; ?>" name="tr_lang">

                     <label class="control-label"><?php echo _TABLEFIELDSTATE; ?></label>

                     <select class="custom-select form-control city" name="city_id">

                     <?php
                    foreach($states as $state)
                    {
                      if($mandal['city_id'] == $state['pt_city_id']){
                        echo '<option value="'.$mandal['city_id'].'" selected="selected">'.$state['tr_name'].'</option>';
                      }else{
                        echo '<option value="'.$state['pt_city_id'].'">'.$state['tr_name'].'</option>';
                      }
                    }
                    ?>

                    </select>

                    <label class="control-label"><?php echo _TABLEFIELDZONE; ?></label>

                    <select class="custom-select form-control zone" name="zone_id">

                     <?php
                    foreach($zones as $zone)
                    {
                      if($mandal['city_id'] == $zone['pt_zone_id']){
                        echo '<option value="'.$mandal['zone_id'].'" selected="selected">'.$zone['tr_name'].'</option>';
                      }else{
                        echo '<option value="'.$zone['pt_zone_id'].'">'.$zone['tr_name'].'</option>';
                      }
                    }
                    ?>

                    </select>

                     <label><?php echo _TABLEFIELDNAME; ?></label>
                     <input type="text" value="<?php echo $mandal['tr_name']; ?>" name="tr_name" class="form-control" required="">


                     <label><?php echo _TABLEFIELDSLUG; ?></label>
                      <input type="hidden" value="<?php echo $mandal['tr_slug']; ?>" name="tr_slug_save">
                     <input type="text" value="<?php echo $mandal['tr_slug']; ?>" name="tr_slug" class="form-control" required="">

                     <label class="control-label"><?php echo _TABLEFIELDFEATURED; ?></label>

                     <select class="custom-select form-control" name="pt_mandal_featured" required="">
                      <?php
                      if($mandal['pt_mandal_featured'] == 1){
                        echo '<option value="1" selected="selected">'._YESTEXT.'</option>';
                        echo '<option value="0">'._NOTEXT.'</option>';

                      }
                      else{
                        echo '<option value="0" selected="selected">'._NOTEXT.'</option>';
                        echo '<option value="1">'._YESTEXT.'</option>';
                      }
                      ?>
                    </select>

                    <label><?php echo _TABLEFIELDIMAGE; ?></label>


                    <div id="image-preview" style="background: url(../../images/<?php echo $mandal['pt_mandal_image'] ?>);">
                      <label for="image-upload" id="image-label"><?php echo _CHOOSEFILE; ?></label>
                      <input type="hidden" value="<?php echo $mandal['pt_mandal_image']; ?>" name="pt_mandal_image_save">
                      <input type="file" name="pt_mandal_image" id="image-upload" />
                    </div>

                    <span class="text-danger recomendedsize"><?php echo _RECOMMENDEDSIZE; ?> <b>350 x 350 Pixels</b> </span>
                    <br/>

                  </div>

                </div>
                <div class="form-group col-md-3 sidebar">

                 <div class="block col-md-12">

                   <label class="control-label"><?php echo _TABLEFIELDLANG; ?></label>

                   <select class="custom-select form-control" name="tr_lang" required="" disabled="">
                    <?php
                    foreach($languages as $language)
                    {
                      if($mandal['tr_lang'] == $language['language_code'])
                      {
                        echo '<option value="'.$mandal['tr_lang'].'" selected="selected">'.$language['language_name'].'</option>';
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

                        <?php foreach ($activelanguages as $language) if ($language['language_code'] != $mandal['tr_lang']) { ?>  
                         <tr>
                           <td align="left"><?php echo $language['language_name']; ?></td>
                           <td align="right"><a class="addIcon duplicateItem" data-url="../controller/duplicate_mandal.php?lang=<?php echo $mandal['tr_lang']; ?>&id=<?php echo $mandal['pt_mandal_id']; ?>&to=<?php echo $language['language_code']; ?>"><i class="fa fa-plus-square-o"></i></a></td>
                         </tr>

                       <?php } ?>

                     </table>
                   </div>
                 <?php endif; ?>


                 <?php if( !empty($languages)): ?>

                  <div class="trlanguages">
                    <p><?php echo _EDITTRANSLATIONITEM; ?></p>
                    <table class="table">

                      <?php
                    foreach ($languages as $language) if ($language['language_code'] != $mandal['tr_lang']) {
                        ?>  
                        <tr>
                         <td align="left"><?php echo $language['language_name']; ?></td>
                         <td align="right"><a href="../controller/edit_mandal.php?lang=<?php echo $language['language_code']; ?>&id=<?php echo $mandal['pt_mandal_id']; ?>" class="addIcon"><i class="fa fa-edit"></i></a></td>
                       </tr>
                       <?php 
                   }elseif(count($languages) <= 1){
                    echo "<span class='notranslations'>"._NOTRANSLATIONSFOUNDITEM."</span>";
                   }
                     ?>

                   </table>
                 </div>
               <?php endif; ?>

               <?php if( !empty($languages) && count($languages) > 0): ?>

                <div class="trlanguages">
                  <p><?php echo _DELETETRANSLATIONITEM; ?></p>
                  <table class="table">

                    <?php foreach ($languages as $language) { ?>  
                     <tr>
                       <td align="left"><?php echo $language['language_name']; ?></td>
                       <td align="right"><a class="addIcon deleteItem" data-url="../controller/delete_tr_mandal.php?lang=<?php echo $language['language_code']; ?>&id=<?php echo $mandal['pt_mandal_id']; ?>"><i class="fa fa-trash-o"></i></a></td>
                     </tr>
                     <?php } ?>

                 </table>
               </div>
             <?php endif; ?>

           </div>
         </div>

          <button class="btn btn-primary" type="submit" name="save"><?php echo _UPDATEITEM; ?></button>
          <button class="btn btn-danger deleteItem" type="button" data-url="../controller/delete_mandal.php?id=<?php echo $mandal['pt_mandal_id']; ?>" data-redirect="../controller/mandal.php"><?php echo _DELETEITEM; ?></button>

         </div>
       </div>

     </form>
   </div>
 </div>
</div>
</div>
</div>
</div>
</section>
