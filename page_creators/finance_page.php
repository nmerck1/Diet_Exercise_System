<?php
//include 'includes/load_classes.inc.php';		// this is included in index
// this will hold all the pages that we create:

// page for finances:
$fin_tabs = array("Tables", "Metrics");
$fin_desc = "This page is for displaying and editing all finances within the system.";
$finance_page = new Page("Finance Management", 2, $fin_tabs, $fin_desc);

//$test1 = "Hello";

//function test(){
//	echo "Hello";
//}
// here we add this object to an array using stdClass?
// then we can retrieve it from other files


