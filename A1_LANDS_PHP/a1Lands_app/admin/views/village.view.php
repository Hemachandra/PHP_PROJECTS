<?php require 'sidebar.php'; ?>  

<script type="text/javascript">
  $(document).ready(function(){
    $('#table_id').dataTable({
     "bProcessing": true,
     "sAjaxSource": "../controller/get_village_data.php",
     "responsive": true,
     "bPaginate":true,
     "aaSorting": [[1,'desc']],
     "sPaginationType":"full_numbers",
     "iDisplayLength": 10,
     "aoColumns": [
     { mData: 'pt_village_id', "width": "5%", "className": "text-center" },
    { mData: 'tr_name'},
    { mData: 'mandal_name'},
    { "mData": null ,
    "width": "14%",
    "className": "text-center",
    'orderable': false,
    'searchable': false,
    "mRender" : function (data) {
      return "<a data-toggle='modal' data-target='#view-modal' id='showEditModal' class='btn btn-small btn-primary' style='color:#fff' data-id='"+data.pt_village_id+"'>"+EDITITEM+"</a> <a class='btn btn-small btn-danger btn-delete deleteItem' data-url='../controller/delete_village.php?id="+data.pt_village_id+"'>"+DELETEITEM+"</a>";}
    }
    ]
  });
  });
</script>

<!--Page Container-->
<section class="page-container">
  <div class="page-content-wrapper">

    <!--Main Content-->

    <div class="content sm-gutter">
      <div class="container-fluid padding-25 sm-padding-10">

        <div class="section-title">
          <h5 class="text-truncate"><?php echo _VILLAGE; ?></h5>
        </div>

        <div class="row">

          <div class="col-12 c-col-12">
            <button type="button" data-toggle="modal" data-target="#add_data_Modal" class="btn btn-primary"><i class="fa fa-plus add-new-i"></i> <?php echo _ADDITEM; ?></button>
          </div>

          <div class="col-12">
            <div class="block table-block mb-4 c-4">

              <div class="row">
                <div class="table-responsive">
                  <table id="table_id" class="table table-striped table-bordered" cellspacing="0" width="100%" style="border-radius: 5px;">
                    <thead>
                      <tr>
                        <th><?php echo _TABLEFIELDID; ?></th>
                        <th><?php echo _TABLEFIELDTITLE; ?></th>
                        <th><?php echo _TABLEFIELDMANDAL; ?></th>
                        <th></th>
                      </tr>
                    </thead>
                  </table>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<div id="view-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
<div class="modal-dialog"> 

<div class="modal-content">
<div class="modal-header">
<button type="button" class="btn btn-primary close reloadonClose" data-dismiss="modal" style="font-size: 24px;">&times;</button>
<h4 class="modal-title" style="font-size: 16px;"><?php echo _EDITITEM; ?></h4>
</div>
<div class="modal-body">
<div id="modal-loader" style="display: none; text-align: center;">
</div>
                        
<div id="dynamic-content"></div>

</div>
</div>

</div>
</div> 

<div id="add_data_Modal" class="modal fade">
 <div class="modal-dialog">
  <div class="modal-content">
   <div class="modal-header">
    <button type="button" class="btn btn-primary close" data-dismiss="modal">&times;</button>
    <h4 class="modal-title"><?php echo _ADDITEM; ?></h4>
  </div>
  <div class="modal-body">
    <form enctype="multipart/form-data" method="post" id="insertZone123">
     <label class="control-label"><?php echo _TABLEFIELDNAME; ?></label>
     <input type="text" name="tr_name" id="tr_name" class="form-control" required="" />
     <br />
     <br>
     <label class="control-label"><?php echo _TABLEFIELDCITY; ?></label>

     <select class="custom-select form-control city" name="city_id" required="">
      <option value="">Select City</option>
       <?php foreach($cities as $city): ?>
         <option value="<?php echo $city['pt_city_id']; ?>"><?php echo $city['tr_name']; ?></option>
       <?php endforeach; ?>
     </select>

     <br>
     <label class="control-label"><?php echo _TABLEFIELDZONE; ?></label>

     <select class="custom-select form-control zone" name="zone_id" required="">
       
     </select>


     <br>
     <label class="control-label"><?php echo _TABLEFIELDMANDAL; ?></label>

     <select class="custom-select form-control mandal" name="mandal_id" required="">
       
     </select>

     <br>
     <br>
     <label class="control-label"><?php echo _TABLEFIELDLANG; ?></label>

     <select class="custom-select form-control" name="tr_lang" required="">
       <?php foreach($activelanguages as $language): ?>
         <option value="<?php echo $language['language_code']; ?>"><?php echo $language['language_name']; ?></option>
       <?php endforeach; ?>
     </select>
     <br>
     <br>

     <input type="submit" name="insert" id="insertZoneBtn" value="<?php echo _SAVECHANGES; ?>" class="btn btn-primary" />

   </form>
 </div>
</div>
</div>
</div>

<script>  
  $(document).ready(function(){
   $('#insertZone123').on("submit", function(event){  
    event.preventDefault();  
     $.ajax({  
      url:"../controller/new_village.php",  
      method:"POST",  
      data:$('#insertZone123').serialize(),  
      beforeSend:function(){  
       $('#insertZoneBtn').val(ST_PROCESSING);  
     },  
     success:function(data){  
       $('#insertZone123')[0].reset();  
       $('#add_data_Modal').modal('hide');
       location.reload();
     }  
   });  
 });

 });  

$(document).ready(function(){
  $(document).on('click', '#showEditModal', function(e){
      e.preventDefault();
      var uid = $(this).data('id');
      $('#dynamic-content').html('');
      $('#modal-loader').show();
      $.ajax({
          url: '../controller/get_village_languages.php',
          type: 'POST',
          data: 'id='+uid,
          dataType: 'html'
      })
      .done(function(data){
          $('#dynamic-content').html('');    
          $('#dynamic-content').html(data);
          $('#modal-loader').hide(); 
      })
      .fail(function(){
          $('#modal-loader').hide();
      });
  });
});

</script>