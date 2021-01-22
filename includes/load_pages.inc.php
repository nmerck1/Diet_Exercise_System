<?php
spl_autoload_register('auto_loader_page_creator');

function auto_loader_page_creator($page_name){
	$path = "page_creators/";
	$ext = ".php";
	$full_path = $path . $page_name . $ext;
	
	// make sure that the file path and file exists
	if(!file_exists($full_path)) {
		return false;
	}
	
	include_once $full_path;
}

