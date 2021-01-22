<?php

// this is the basic template of the structure of a page

class Page {
	private $title;			// the title of this section
	private $num_tabs;		// the integer of the number of tabs to show (show zero if there are none)
	private $tabs_array;	// names to hold each tab name
	private $description;	// the description of the section
	
	// constructor for create a finance object
	public function __construct(string $title, $num_tabs, array $tabs_array, string $description) {
		$this->title = $title;
		$this->num_tabs = $num_tabs;
		$this->tabs_array = $tabs_array;
		$this->description = $description;
	}
	
	public function get_title(){
		return $this->title;
	}
	
	public function set_title($title){
		$this->title = $title;
	}
	
	public function get_desc(){
		return $this->description;
	}
	
	public function set_desc($description){
		$this->description = $description;
	}
	
	public function get_tabs(){
		return $this->tabs_array;
	}
	
	public function set_tabs($tabs_array){
		$this->tabs_array = $tabs_array;
	}
}


