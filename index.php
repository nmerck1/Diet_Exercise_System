<?php
include 'includes/load_classes.inc.php';
include 'page_creators/finance_page.php';
?>

<!DOCTYPE html>
<html>
<head>
	<title> Finance Table </title>
	 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 100%}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
        
    /* On small screens, set height to 'auto' for the grid */
    @media screen and (max-width: 767px) {
      .row.content {height: auto;} 
    }
	
	
	
	/* Style the tab */
	.tab {
	  overflow: hidden;
	  border: 1px solid #ccc;
	  background-color: #f1f1f1;
	}

	 Style the buttons that are used to open the tab content 
	.tab button {
	  background-color: inherit;
	  float: left;
	  border: none;
	  outline: none;
	  cursor: pointer;
	  padding: 14px 16px;
	  transition: 0.3s;
	}

	 Change background color of buttons on hover 
	.tab button:hover {
	  background-color: #ddd;
	}

	 Create an active/current tablink class 
	.tab button.active {
	  background-color: #ccc;
	}

	 Style the tab content 
	.tabcontent {
	  display: none;
	  padding: 6px 12px;
	  border: 1px solid #ccc;
	  border-top: none;
	}
	
  </style>
  <script>
    function open_tab(evt, tab_name) {
		//alert(tab_name);
	  // Declare all variables
	  var i, tabcontent, tablinks;

	  // Get all elements with class="tabcontent" and hide them
	  tabcontent = document.getElementsByClassName("tabcontent");
	  for (i = 0; i < tabcontent.length; i++) {
		tabcontent[i].style.display = "none";
	  }

	  // Get all elements with class="tablinks" and remove the class "active"
	  tablinks = document.getElementsByClassName("tablinks");
	  for (i = 0; i < tablinks.length; i++) {
		tablinks[i].className = tablinks[i].className.replace(" active", "");
	  }

	  // Show the current tab, and add an "active" class to the button that opened the tab
	  document.getElementById(tab_name).style.display = "block";
	  evt.currentTarget.className += " active";
	}
  </script>
  
</head>
<!--
<body>
	
</body>
-->
<body>

<nav class="navbar navbar-inverse visible-xs">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Finances</a></li>
        <!--<li><a href="#">Age</a></li>
        <li><a href="#">Gender</a></li>
        <li><a href="#">Geo</a></li>-->
      </ul>
    </div>
  </div>
</nav>

<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav hidden-xs">
      <h2>Life Management</h2>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="#section1">Finances</a></li>
        <!--<li><a href="#section2">Age</a></li>
        <li><a href="#section3">Gender</a></li>
        <li><a href="#section3">Geo</a></li>-->
      </ul><br>
    </div>
    <br>
    
    
	<div id="load_content" name="load_content" class="container">
		<h2><?php echo $finance_page->get_title(); ?></h2>
		<h3><?php echo $finance_page->get_desc(); ?></h3>
		
		<div class="tab">
			<?php //here we dynamically create the buttons and tabs for each page object:
				$tabs_array = $finance_page->get_tabs();
				//print_r($tabs_array);
				for ($i = 0; $i < count($tabs_array); $i++) {
					//echo '<button class="tablinks" onclick="open_tab(event, '.$tabs_array[$i].')">'.$tabs_array[$i].'</button>';
					echo '<button class="tablinks" onclick="open_tab(event, \''.$tabs_array[$i].'\')">'.$tabs_array[$i].'</button>';
				}
			
			?>
		</div>

		<?php //here we dynamically create the tabs for each page object:
			$tabs_array = $finance_page->get_tabs();
			
			for ($i = 0; $i < count($tabs_array); $i++) {
				echo $tabs_array[$i];
				echo '	<div id="'.$tabs_array[$i].'" class="tabcontent">
							<h3>'.$tabs_array[$i].'</h3>
						</div>
				';
			}
		
		?>
	
	</div>
   
  </div>
</div>

</body>
</html>











