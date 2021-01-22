<?php


// class for each 'finance type'
class Finance {
	private $amount;	// haven't defined this as an integer because it is a decimal format
	private $name;
	private $created;
	private $fin_type;
	
	// constructor for create a finance object
	public function __construct(string $name, $amount, string $created, string $fin_type) {
		$this->amount = $amount;
		$this->name = $name;
		$this->created = $created;
		$this->fin_type = $fin_type;
	}
	
	public function get_name(){
		return $this->name;
	}
	
	public function set_name($name){
		$this->name = $name;
	}
}


