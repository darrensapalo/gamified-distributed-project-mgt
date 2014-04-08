<!doctype html>
<html class="no-js" lang="en">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>Foundation | Welcome</title>
	<link rel="stylesheet" href="css/foundation.css" />
	<script src="js/vendor/modernizr.js"></script>
</head>
<body>
	<?PHP $this->load->view('common/nav'); ?>

	<div class="row">
		<div class="large-12 columns">
			<h1>CSC755M</h1>
			<hr>
		</div>
	</div>
	
	<div class="row">
		<div class="large-12 columns">
			<div class="panel">
				<p>On this page, you can view the list of tasks you are currently assigned to.</p>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="large-4 medium-4 small-4 columns">
			<h4>Tasks</h4>
			<div class="callout panel">
				<h5>Design analysis</h5>
				<p>Study the design of open source PHP frameworks.</p>
			</div>
			<div class="callout panel">
				<h5>Framework extension</h5>
				<p>Study how to implement your own plugins.</p>
			</div>
		</div>
		<div class="large-4 medium-4 small-4 columns">
			<h4>Currently doing</h4>
		</div>
		<div class="large-4 medium-4 small-4 columns">
			<h4>Done</h4>
			<div class="callout panel">
				<p>Four columns</p>
			</div>
		</div>
	</div>

	<script src="js/vendor/jquery.js"></script>
	<script src="js/foundation.min.js"></script>
	<script>
		$(document).foundation();
	</script>
</body>
</html>
