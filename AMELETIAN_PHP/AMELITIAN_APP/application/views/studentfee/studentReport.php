<?php
$currency_symbol = $this->customlib->getSchoolCurrencyFormat();
?>
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/css/select2.min.css" rel="stylesheet" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/js/select2.min.js"></script>
<div class="content-wrapper" style="min-height: 946px;">   
    <section class="content-header">
        <h1>
            <i class="fa fa-money"></i> <?php echo $this->lang->line('fees_collection'); ?> </h1>
    </section>
    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title"><i class="fa fa-search"></i> <?php echo $this->lang->line('select_criteria'); ?></h3>
                    </div>
                    <div class="box-body">
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <div class="row">
                                    <form role="form" action="<?php echo site_url('admin/resultreport') ?>" method="post" class="">
                                        <?php echo $this->customlib->getCSRF(); ?>

                                     

                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label><?php echo $this->lang->line('class'); ?></label><small class="req">  *</small>
                                                <select autofocus="" id="class_id" name="class_id" class="form-control" >
                                                    <option value=""><?php echo $this->lang->line('select'); ?></option>
                                                    <?php
                                                    foreach ($classlist as $class) {
                                                        ?>
                                                        <option value="<?php echo $class['id'] ?>" <?php if (set_value('class_id') == $class['id']) echo "selected=selected" ?>><?php echo $class['class'] ?></option>
                                                        <?php
                                                    }
                                                    ?>
                                                </select>
                                                 <span class="text-danger"><?php echo form_error('class_id'); ?></span>
                                            </div> 
                                           
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label><?php echo $this->lang->line('section'); ?></label>
                                                <select  id="section_id" name="section_id" class="form-control" >
                                                    <option value=""><?php echo $this->lang->line('select'); ?></option>
                                                </select>
                                                <span class="text-danger"><?php echo form_error('section_id'); ?></span>
                                            </div> 
                                        </div>
                                       
                                        <div class="col-sm-12">  
                                            <div class="form-group">
                                                <button type="submit" name="search" value="search_filter" class="btn btn-primary pull-right btn-sm checkbox-toggle"><i class="fa fa-search"></i> <?php echo $this->lang->line('search'); ?></button>
                                            </div>
                                        </div>
                                    </form>
                                </div>  
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="row">
                                    <form role="form" action="<?php echo site_url('admin/resultreport') ?>" method="post" class="">
                                        <?php echo $this->customlib->getCSRF(); ?>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label><?php echo $this->lang->line('search_by_keyword'); ?></label>
                                                <input type="text" name="search_text" class="form-control" value="<?php echo set_value('search_text'); ?>" placeholder="<?php echo $this->lang->line('search_by_student_name'); ?>">
                                            </div>
                                        </div>

                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <button type="submit" name="search" value="search_full" class="btn btn-primary btn-sm pull-right checkbox-toggle"><i class="fa fa-search"></i> <?php echo $this->lang->line('search'); ?></button>
                                            </div>
                                        </div>
                                    </form>
                                </div>  
                            </div>
                        </div>
                    </div>

                    <?php 
                            if ($this->input->server('REQUEST_METHOD') == "POST") {

                                include('report_print.php');
                             } ?>

            </div>

        </div> 

    </section>
</div>
<script>
    $("#exam_id").select2({
        closeOnSelect: false,
    placeholder: "Placeholder",
    allowHtml: true,
    allowClear: true,
    tags: true
		});
    $(document).on('change', '#class_id', function (e) {
            $('#section_id').html("");
            var class_id = $(this).val();
            getSectionByClass(class_id, 0);
        });
        
    function getSectionByClass(class_id, section_id) {

if (class_id != "") {
    $('#section_id').html("");
    var base_url = '<?php echo base_url() ?>';
    var div_data = '<option value=""><?php echo $this->lang->line('select'); ?></option>';
    $.ajax({
        type: "GET",
        url: base_url + "sections/getByClass",
        data: {'class_id': class_id},
        dataType: "json",
        beforeSend: function () {
            $('#section_id').addClass('dropdownloading');
        },
        success: function (data) {
            $.each(data, function (i, obj)
            {
                var sel = "";
                if (section_id == obj.section_id) {
                    sel = "selected";
                }
                div_data += "<option value=" + obj.section_id + " " + sel + ">" + obj.section + "</option>";
            });
            $('#section_id').append(div_data);
        },
        complete: function () {
            $('#section_id').removeClass('dropdownloading');
        }
    });
}
}

$(document).on("change","#examgroup_id",function(){
        all_records();
    });
    function all_records() {
        var base_url = '<?php echo base_url(); ?>';

        $.ajax({
            type: "POST",
            url: base_url + "admin/examgroup/getexam",
            data: {examgroup_id: $('#examgroup_id').val()}, // serializes the form's elements.
            dataType: "JSON", // serializes the form's elements.
            beforeSend: function () {

            },
            success: function (data)
            {
               let html = '<option value="">Select</option>';
               for(let i = 0; i < data.examList.length; i++){
                let selected = '';
                let id = '<?php echo $exam_id; ?>';
                if(data.examList[i].id == id){
                    selected = ' selected="selected"';
                }
                html += '<option '+selected+' value="'+data.examList[i].id+'">'+data.examList[i].exam+'</option>';
               }
               $("#exam_id").html(html);

            },
            error: function (xhr) { // if error occured

                alert("Error occurred, Please try again");

            },
            complete: function () {

            }
        });
    }

</script>