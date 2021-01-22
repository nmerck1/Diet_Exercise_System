<?php
spl_autoload_register('auto_loader_class');

function auto_loader_class($class_name){
	$path = "classes/";
	$ext = ".class.php";
	$full_path = $path . $class_name . $ext;
	
	// make sure that the file path and file exists
	if(!file_exists($full_path)) {
		return false;
	}
	
	include_once $full_path;
}


