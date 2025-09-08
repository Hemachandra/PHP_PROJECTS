<?php
$currency_symbol = $this->customlib->getSchoolCurrencyFormat();
//print_r();die;
?>
<div class="content-wrapper">
    <section class="content-header"></section>
    <!-- Main content -->
    <section class="content">
        <?php $this->load->view('reports/_finance'); ?>
        <div class="row">
            <div class="col-md-12">
                <div class="box removeboxmius">
                    <div class="box-header ptbnull"></div>
                    <div class="box-header ">
                        <h3 class="box-title"><i class="fa fa-search"></i> <?php echo $this->lang->line('select_criteria'); ?></h3>
                    </div>

                    <form role="form" action="<?php echo site_url('studentfee/collection_report') ?>" method="post" class="">
                        <div class="box-body row">
                            <?php echo $this->customlib->getCSRF(); ?>
                            <div class="col-sm-3 col-lg-3 col-md-3">
                                <div class="form-group">
                                    <label><?php echo $this->lang->line('search') . " " . $this->lang->line('type'); ?><small class="req"> *</small></label>
                                    <select class="form-control" name="search_type" onchange="showdate(this.value)">

                                        <?php foreach ($searchlist as $key => $search) {
                                            ?>
                                            <option value="<?php echo $key ?>" <?php
                                            if ((isset($search_type)) && ($search_type == $key)) {
                                                echo "selected";
                                            }
                                            ?>><?php echo $search ?></option>
                                                <?php } ?>
                                    </select>
                                    <span class="text-danger"><?php echo form_error('search_type'); ?></span>
                                </div>
                            </div>
                            <div class="col-sm-3 col-lg-3 col-md-3">
                                <div class="form-group">
                                    <label><?php echo $this->lang->line('collect') . " " . $this->lang->line('by'); ?><small class="req"> *</small></label>
                                    <select class="form-control"  name="collect_by" >
                                        <option value=""><?php echo $this->lang->line('select') ?></option>
                                        <?php
                                        foreach ($collect_by as $key => $value) {
                                            ?>
                                            <option value="<?php echo $key ?>" <?php
                                            if ((isset($received_by)) && ($received_by == $key)) {
                                                echo "selected";
                                            }
                                            ?> ><?php echo $value ?></option> 
                                                <?php } ?>
                                    </select> 
                                    <span class="text-danger"><?php echo form_error('collect_by'); ?></span>
                                </div>
                            </div> 
                            <div id='date_result'>

                            </div>
                            <div class="col-sm-3 col-lg-3 col-md-3">
                                <div class="form-group">
                                    <label><?php echo $this->lang->line('group') . " " . $this->lang->line('by'); ?><small class="req"> *</small></label>
                                    <select class="form-control" name="group" >
                                        <?php foreach ($group_by as $key => $value) {
                                            ?>
                                            <option value="<?php echo $key ?>" <?php
                                            if ((isset($group_byid)) && ($group_byid == $key)) {
                                                echo "selected";
                                            }
                                            ?> ><?php echo $value ?></option> 
                                                <?php } ?>
                                    </select>
                                    <span class="text-danger"><?php echo form_error('group'); ?></span>
                                </div>
                            </div> 
                          
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <button type="submit" name="search" value="search_filter" class="btn btn-primary btn-sm checkbox-toggle pull-right"><i class="fa fa-search"></i> <?php echo $this->lang->line('search'); ?></button>
                                </div>
                            </div>
                        </div>
                    </form>


                    <div class="">
                        <div class="box-header ptbnull"></div>
                        <div class="box-header ptbnull">
                            <h3 class="box-title titlefix"><i class="fa fa-money"></i> <?php ?> <?php echo $this->lang->line('fees') . " " . $this->lang->line('collection') . " " . $this->lang->line('report'); ?></h3> 
                        </div>
                        <div class="box-body table-responsive" id="transfee">
                            <div class="download_label"><?php ?> <?php echo $this->lang->line('fees') . " " . $this->lang->line('collection') . " " . $this->lang->line('report') . "<br>";
                                                $this->customlib->get_postmessage();
                                                ?></div>
                            <a class="btn btn-default btn-xs pull-right" id="print" onclick="printDiv()" ><i class="fa fa-print"></i></a> <a class="btn btn-default btn-xs pull-right" id="btnExport" onclick="fnExcelReport();"> <i class="fa fa-file-excel-o"></i> </a>
                            <table class="table table-striped  table-hover " id="headerTable">
                                <thead class="header">
                                    <tr>
                                        <th><?php echo $this->lang->line('payment_id'); ?></th>
                                        <th><?php echo $this->lang->line('date'); ?></th>
                                        <th><?php echo $this->lang->line('name'); ?></th>
                                        <th><?php echo $this->lang->line('class'); ?></th>
                                        <th><?php echo $this->lang->line('fee_type'); ?></th>
                                        <th>Branch</th>
                                        <th><?php echo $this->lang->line('collect_by'); ?></th>
                                        <th><?php echo $this->lang->line('mode'); ?></th>
                                        <th><?php echo $this->lang->line('note'); ?></th>

                                        <th class="text text-right"><?php echo $this->lang->line('amount'); ?> <span><?php echo "(" . $currency_symbol . ")"; ?></span></th>
                                        <th class="text text-right"><?php echo $this->lang->line('discount'); ?> <span><?php echo "(" . $currency_symbol . ")"; ?></span></th>
                                        <th class="text text-right"><?php echo $this->lang->line('fine'); ?> <span><?php echo "(" . $currency_symbol . ")"; ?></span></th>
                                        <th class="text text-right"><?php echo $this->lang->line('total'); ?> <span><?php echo "(" . $currency_symbol . ")"; ?></span></th>
                                    </tr>
                                </thead>
                                <tbody>

                                    <?php
                                    if (empty($results)) {
                                        
                                    } else {

                                        $count = 1;
                                        $grdamountLabel = array();
                                        $grddiscountLabel = array();
                                        $grdfineLabel = array();
                                        $grdTotalLabel = array();

                                        foreach ($results as $key => $value) {

                                            
                                            $payment_id = array();
                                            $date = array();
                                            $student_name = array();
                                            $student_class = array();
                                            $fees_type = array();
                                            $pay_mode = array();
                                            $collection_by = array();
                                            $amountLabel = array();
                                            $discountLabel = array();
                                            $fineLabel = array();
                                            $TotalLabel = array();
                                            $note = array();
                                            foreach ($value as $collect) {
                                                $payment_id[] = $collect['inv_no'];
                                                $date[] = date($this->customlib->getSchoolDateFormat(), $this->customlib->dateyyyymmddTodateformat($collect['date']));
                                                $student_name[] = $this->customlib->getFullName($collect['firstname'],$collect['middlename'],$collect['lastname'],$sch_setting->middlename,$sch_setting->lastname);
                                                $student_class[] = $collect['class'] . " (" . $collect['section'] . ")";
                                                $fees_type[] = $collect['type'];
                                                $pay_mode[] = $collect['payment_mode'];
                                                $exp = explode("Collected By",$collect['description']);
                                                $note[] = $exp[0];
                                                $collection_by[] = $collect['received_byname']['name'] . " (" . $collect['received_byname']['employee_id'] . ")";

                                                $amountLabel[] = number_format($collect['amount'], 2, '.', '');

                                                $discountLabel[] = number_format($collect['amount_discount'], 2, '.', '');


                                                $fineLabel[] = number_format($collect['amount_fine'], 2, '.', '');
                                                $t = $collect['amount'] + $collect['amount_fine'];
                                                $TotalLabel[] = number_format($t, 2, '.', '');
                                            }
                                            ?>
                                            <tr>
                                                <td>
                                                    <table width="100%"><?php foreach ($payment_id as $p_ides) {
                                                ?>
                                                            <tr><td class="text-left-md"><?php echo $p_ides; ?></td></tr>
                                                        <?php }
                                                        ?></table>
                                                </td>
                                                <td >
                                                    <table width="100%"><?php foreach ($date as $date_val) {
                                                            ?>
                                                            <tr><td class="text-left-md"><?php echo $date_val; ?></td></tr>
                                                        <?php }
                                                        ?></table>
                                                </td>
                                                <td >
                                                    <table width="100%"><?php foreach ($student_name as $student_name_val) {
                                                            ?>
                                                            <tr><td class="text-left-md"><?php echo $student_name_val; ?></td></tr>
                                                        <?php }
                                                        ?>
                                                    </table>
                                                </td>
                                                <td>
                                                    <table width="100%"><?php
                                                        foreach ($student_class as $student_class_val) {
                                                            ?>
                                                            <tr><td class="text-left-md"><?php echo $student_class_val; ?></td></tr>
                                                        <?php }
                                                        ?>
                                                    </table>
                                                </td>
                                                <td >
                                                    <table width="100%"><?php foreach ($fees_type as $fees_type_val) {
                                                            ?>
                                                            <tr><td class="text-left-md"><?php echo $fees_type_val; ?></td></tr>
                                                        <?php }
                                                        ?>
                                                    </table>
                                                </td>
                                                <td >
                                                    <table width="100%"><?php foreach ($fees_type as $fees_type_val) {
                                                            ?>
                                                            <tr><td class="text-left-md"><?php echo ($fees_type_val == "Mess Fee" || $fees_type_val == "Transport and Mess")?("KALAYANAMMA"):(
                                                                ($fees_type_val == "Tuition Fee")?("Montessori Elite EM School"):(
                                                                 ($fees_type_val == "Lodging Fee")?("KRS SIKSHA SADAN"):('')   
                                                                )
                                                            ); ?></td></tr>
                                                        <?php }
                                                        ?>
                                                    </table>
                                                </td>
                                                <td ><table width="100%"><?php foreach ($collection_by as $collection_by_val) {
                                                            ?>
                                                            <tr><td class="text-left-md"><?php echo $collection_by_val; ?></td></tr>
                                                        <?php }
                                                        ?>
                                                    </table></td>
                                                <td >
                                                    <table width="100%"><?php foreach ($pay_mode as $pay_mode_val) {
                                                            ?>
                                                            <tr><td class="text-left-md"><?php echo $pay_mode_val; ?></td></tr>
                                                        <?php }
                                                        ?>
                                                    </table>
                                                </td>
                                                <td >
                                                    <table width="100%"><?php foreach ($note as $notes) {
                                                            ?>
                                                            <tr><td class="text-left-md"><?php echo $notes; ?></td></tr>
                                                        <?php }
                                                        ?>
                                                    </table>
                                                </td>
                                                <td class="text text-right">
                                                    <table width="100%"><?php foreach ($amountLabel as $amountLabel_val) {
                                                            ?>
                                                            <tr><td><?php echo $amountLabel_val; ?></td></tr>
                                                        <?php }
                                                        ?>
                                                    </table>
                                                </td>
                                                <td class="text text-right">
                                                    <table width="100%"><?php foreach ($discountLabel as $discountLabel_val) {
                                                            ?>
                                                            <tr><td><?php echo $discountLabel_val; ?></td></tr>
                                                        <?php }
                                                        ?>
                                                    </table>

                                                </td>
                                                <td class="text text-right">
                                                    <table width="100%"><?php foreach ($fineLabel as $fineLabel_val) {
                                                            ?>
                                                            <tr><td><?php echo $fineLabel_val; ?></td></tr>
                                                        <?php }
                                                        ?>
                                                    </table>

                                                </td>
                                                <td class="text text-right">
                                                    <table width="100%"><?php foreach ($TotalLabel as $TotalLabel_val) {
                                                            ?>
                                                            <tr><td><?php echo $TotalLabel_val; ?></td></tr>
                                                        <?php }
                                                        ?>
                                                    </table>
                                                </td>
                                            </tr>
                                            <?php
                                            $count++;
                                            ?>
                                            <tr>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td></td>
                                                <td style="font-weight:bold"><?php echo $this->lang->line('sub') . " " . $this->lang->line('total') ?></td>
                                                <td class="text text-right" style="font-weight:bold"><?php echo array_sum($amountLabel); ?></td>
                                                <td class="text text-right" style="font-weight:bold" ><?php echo array_sum($discountLabel); ?></td>
                                                <td class="text text-right" style="font-weight:bold" ><?php echo array_sum($fineLabel); ?></td>
                                                <td class="text text-right " style="font-weight:bold" ><?php echo array_sum($TotalLabel); ?></td>                                                
                                            </tr>
                                            <?php
                                            $grdamountLabel[] = array_sum($amountLabel);
                                            $grddiscountLabel[] = array_sum($discountLabel);
                                            $grdfineLabel[] = array_sum($fineLabel);
                                            $grdTotalLabel[] = array_sum($TotalLabel);
                                        }
                                        ?>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td style="font-weight:bold"><?php echo $this->lang->line('grand') . " " . $this->lang->line('total'); ?></td>
                                            <td class="text text-right" style="font-weight:bold"><?php echo array_sum($grdamountLabel); ?></td>
                                            <td class="text text-right" style="font-weight:bold" ><?php echo array_sum($grddiscountLabel); ?></td>
                                            <td class="text text-right" style="font-weight:bold" ><?php echo array_sum($grdfineLabel); ?></td>
                                            <td class="text text-right " style="font-weight:bold" ><?php echo array_sum($grdTotalLabel); ?></td>                                                
                                        </tr>
                                        <?php
                                    }
                                    ?>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div> 
        </div>   
</div>  
</section>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/xlsx/0.18.5/xlsx.full.min.js"></script>

<iframe id="txtArea1" style="display:none"></iframe>

<script>
<?php
if ($search_type == 'period') {
    ?>

        $(document).ready(function () {
            showdate('period');
        });

    <?php
}
?>

function downloadExcel() {
            // Get the table element
            var table = document.getElementById("headerTable");

            // Convert the table to a worksheet
            var workbook = XLSX.utils.table_to_book(table, { sheet: "Sheet1" });

            // Create the Excel file and download it
            XLSX.writeFile(workbook, 'table.xlsx');
        }

    document.getElementById("print").style.display = "block";
    document.getElementById("btnExport").style.display = "block";
    //document.getElementById("heading").style.display = "none";
    const heading = document.getElementById("heading");
    if (heading) {
        heading.style.display = "none";
    }
    function printDiv() {
        document.getElementById("print").style.display = "none";
        document.getElementById("btnExport").style.display = "none";
        //document.getElementById("heading").style.display = "block";
        var divElements = document.getElementById('transfee').innerHTML;
        var oldPage = document.body.innerHTML;
        document.body.innerHTML =
                "<html><head><title></title></head><body>" +
                divElements + "</body>";
        window.print();
        document.body.innerHTML = oldPage;

        location.reload(true);
    }

    function fnExcelReport() {
    let table = document.getElementById("headerTable"); // ID of the table

    let tab_text = `<html xmlns:x="urn:schemas-microsoft-com:office:excel">
                    <head>
                        <meta http-equiv="content-type" content="application/vnd.ms-excel; charset=UTF-8">
                        <xml>
                            <x:ExcelWorkbook>
                                <x:ExcelWorksheets>
                                    <x:ExcelWorksheet>
                                        <x:Name>Sheet1</x:Name>
                                        <x:WorksheetOptions>
                                            <x:Panes></x:Panes>
                                        </x:WorksheetOptions>
                                    </x:ExcelWorksheet>
                                </x:ExcelWorksheets>
                            </x:ExcelWorkbook>
                        </xml>
                    </head>
                    <body>
                        <table border="1">${table.innerHTML}</table>
                    </body>
                    </html>`;

    // Create a Blob with Excel MIME type
    let blob = new Blob([tab_text], { type: "application/vnd.ms-excel" });

    // Create a download link
    let a = document.createElement("a");
    a.href = URL.createObjectURL(blob);
    a.download = "Table_Report.xls";

    // Append the link, trigger download, and remove the link
    document.body.appendChild(a);
    a.click();
    document.body.removeChild(a);
}







</script>