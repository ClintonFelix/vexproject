<?php 
require('includes/config.php');
require('includes/header.php')
?>


<div id="wrapper">

	
	<!-- NAV -->
	<div id="navigation">
	<ul class="menu">
	<li><a href="<?php echo DIR;?>">Home</a></li>
	<?php
		//get the rest of the pages
		
		$sql = mysql_query("SELECT * FROM pages WHERE isRoot='1' ORDER BY pageID");
		while ($row = mysql_fetch_object($sql))
		{
			echo "<li><a href=\"".DIR."?p=$row->pageID\">$row->pageTitle</a></li>"; 
		}
	?>
	</ul>
	</div>
	<!-- END NAV -->
	
	<div id="content">
	
	<?php	
	//if no page clicked on load home page default to it of 1
	if(!isset($_GET['p'])){
		$q = mysql_query("SELECT * FROM pages WHERE pageID='1'");
	} else { //load requested page based on the id
		$id = $_GET['p']; //get the requested id
		$id = mysql_real_escape_string($id); //make it safe for database use
		$q = mysql_query("SELECT * FROM pages WHERE pageID='$id'");
	}
	
	//get page data from database and create an object
	$r = mysql_fetch_object($q);
	
	//print the pages content
	echo "<h1>$r->pageTitle</h2>";
	echo $r->pageCont;
	?>
	
	</div><!-- close content div -->

	<!-- close footer -->
</div><!-- close wrapper -->

</body>
</html>