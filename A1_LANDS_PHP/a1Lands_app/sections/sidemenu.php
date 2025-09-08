<?php

// Get Menu Header

$headerMenu = getHeaderMenu($connect, $lang);

$navigationHeader = getNavigation($connect, $headerMenu['menu_id'], $lang);

    $dropdownOptions = array();
    $dropdownCheck = array();

    foreach($navigationHeader as $k => $v){
        if($v['navigation_url'] == "verified-properties"
        || $v['navigation_url'] == "legal-check" || $v['navigation_url'] == "legal-documentation" || $v['navigation_url'] == "legal-desk"
        || $v['navigation_url'] == "pest-control" || $v['navigation_url'] == "vasthu" || $v['navigation_url'] == "tenant-verification"
        || $v['navigation_url'] == "architect" || $v['navigation_url'] == "home-loans"
        || $v['navigation_url'] == "property-valuation" || $v['navigation_url'] == "legal-title-check"|| $v['navigation_url'] == "rates-trends"
        || $v['navigation_url'] == "investment-hotspot" || $v['navigation_url'] == "investment-insights" ){
            $dropdownCheck[] = $v['navigation_url'];
            $dropdownOptions[] = $v;
        }
    }

require './sections/views/sidemenu.view.php';

?>