<?php require 'sidebar.php'; ?>  

<script type="text/javascript">
$(document).ready(function(){
    $('#table_id').dataTable({
        "bProcessing": true,
        "sAjaxSource": "../controller/get_leads.php",
        "responsive": true,
        "bPaginate": true,
        "aaSorting": [[0, 'desc']],
        "sPaginationType": "full_numbers",
        "iDisplayLength": 10,
        "aoColumns": [
            { mData: 'id', "width": "3%", "className": "text-left" },
            { mData: 'name', "width": "7%", "className": "text-left" },
            { mData: 'email', "width": "15%", "className": "text-left" },
            { mData: 'msg', "width": "5%", "className": "text-left" },
            { mData: 'phone', "width": "5%", "className": "text-left" },
            { 
                "mData": 'link', 
                "width": "5%", 
                "className": "text-center",
                "mRender": function(data, type, row) {
                    // Create a button with a link
                    return '<a href="' + data + '" target="_blank" class="btn btn-primary">View Property</a>';
                }
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
          <h5 class="text-truncate"><?php echo _LEADS; ?></h5>
        </div>

        <div class="row">

          <div class="col-12 c-col-12">
            <a class="btn btn-primary" href="../controller/new_user.php">
              <i class="fa fa-plus add-new-i"></i> <?php echo _ADDITEM; ?>
            </a>
          </div>

          <div class="col-12">
            <div class="block table-block mb-4 c-4">

              <div class="row">
                <div class="table-responsive">
                  <table id="table_id" class="table table-striped table-bordered" cellspacing="0" width="100%" style="border-radius: 5px;">
                    <thead>
                      <tr>
                      <th><?php echo _TABLEFIELDID; ?></th>
                        <th><?php echo _TABLEFIELDUSERNAME; ?></th>
                        <th><?php echo _TABLEFIELDUSEREMAIL; ?></th>
                        <th><?php echo _TABLEFIELDUSERMSG; ?></th>
                        <th><?php echo _TABLEFIELDUSERPHONE; ?></th>
                        <th><?php echo _TABLEFIELDPROPERTY; ?></th>
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