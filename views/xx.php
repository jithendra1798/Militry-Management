<!DOCTYPE html>

<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>login</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="../css/default.css" / rel="stylesheet" type="text/css" />
</head>
<body>
<div id="header">
	<h1><a href="#">ARMY</a></h1>
	<h2>ministry of defence</a></h2>
</div>
<h1 class="my-5">Hi, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b>. Welcome to our site.</h1>
<div id="menu">
	<ul>
		<li class="active"><a href="soldier details.php" accesskey="1" title="">personal info</a></li>
		<li><a href="weopons_details.php" accesskey="2" title="">weapon details</a></li>
		<li><a href="battalians.php" accesskey="3" title="">battalians</a></li>
		<li><a href="mailto:someone@example.com" accesskey="5" title="">Contact Us</a></li>
		<li><a href="logout.php" accesskey="4" title="">logout</a></li>
	</ul>
</div>
<div id="content">
	<div id="colOne">
		<h2>Recent Updates</h2>
		<h3>lorum</h3>
		<p>Rhoncus ac, lacinia, nisl. Aliquam gravida massa eu arcu. <a href="#">More&#8230;</a></p>
		<h3>Fusce dolor totique</h3>
		<p>Sed eu eros imperdiet eros interdum blandit. Vivamus sagittis bibendum erat. Curabitur malesuada lorem ipsum dolorem. <a href="#">More&#8230;</a></p>
		<h3>Nunc pellentesque</h3>
		<p>Sed vestibulum blandit nisl. Quisque elementum convallis purus. Suspendisse lorem ipsum dolorem potenti. Donec nulla est, laoreet quis, pellentesque in. <a href="#">More&#8230;</a></p>
		<h3>Suspendis potenti</h3>
		<p>Donec nulla est, laoreet quis, pellentesque in, congue in, dui. Nunc rhoncus lorem ipsum dolorem placerat augue. Donec justo odio, eleifend varius, volutpat venenatis, sagittis ut, orci. <a href="#">More&#8230;</a></p>
	</div>
	<div id="colTwo">
		<h2>Latest news</h2>
		<ul>
			<li><a href="#">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to Suspendisse quis gravida massa felis.</a></li>
			<li><a href="#">Vivamus sagittis bibendum erat. ting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages</a></li>
			<li><a href="#">when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, Nullam et orci in erat viverra ornare.</a></li>
			<li><a href="#">opularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software lik  Suspendisse quis gravida massa felis.</a></li>

		</ul>
	</div>
	<div id="colThree">
		<h2>quick navigation</h2>
		<ul>
			<li><a href="all_soldier_details.php">All soldier details</a></li>
			<li><a href="slary_list.php">salary</a></li>
			<li><a href="catagory_wise.php">catagory wise wepons list</a></li>
			<li><a href="battalians.php">battalians</a></li>
			<li><a href="medals.php">medals</a></li>
			<li><a href="rewards">rewards</a></li>
			<li><a href="war.php">war details</a></li>
			<!--<li><a href="#">In posuere risus ac felis</a></li>
			<li><a href="#">Proin facilisis sagittis</a></li>
			<li><a href="#">In fringilla aliquet odio</a></li>
			<li><a href="#">Quisque sodales arcu</a></li>
			<li><a href="#">Nam tincidunt consec</a></li>
		</ul>
		<h2>Nulla vel  mollis</h2>
		<ul>
			<li><a href="#">Pellentesque consequat</a></li>
			<li><a href="#">Morbi condimentum</a></li>
			<li><a href="#">Cras tempor pulvinar</a></li>
			<li><a href="#">Pellentesque vel magna</a></li>
			<li><a href="#">Purus placerat imperdiet</a></li>
			<li><a href="#">Duis ultrices pede vel</a></li>
			<li><a href="#">Etiam eu libero eget est</a></li>
			<li><a href="#">Faucibus fermentum.</a></li>
			<li><a href="#">Vestibulum vulputate</a></li>
			<li><a href="#">Cras sollicitudin pede et</a></li>
			<li><a href="#">Maecenas interdum ante</a></li>
			<li><a href="#">Nullam lacinia eleifend</a></li>
		</ul>
	</div>
	<div style="clear: both;">&nbsp;</div>
</div>
<div id="footer">
	<p>Copyright &copy; 2006  Elemenst. Designed by <a href="http://www.freecsstemplates.org/"><strong>Free CSS Templates</strong></a></p>
</div>
<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div>
-->
</body>
</html>
