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
			<h1>My Tasks</h1>
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
		<ul class="small-block-grid-2 medium-block-grid-3 large-block-grid-4">
			<li>
				<div class="panel radius">
					<h5>Design analysis</h5>
					<p>Study the design of the open source PHP frameworks.</p>
					<span class="default label">15 days left</span>
					<span class="red label">colored label</span>
				</div>
			</li>
			<li>
				<div class="panel radius">
					<h5>Test prototype</h5>
					<p>
					Allow the determined target users to use the prototype and apply contextual inquiry user research method.
					</p>
					<span class="alert label">3 days left</span>
				</div>
			</li>
			<li>
				<div class="panel radius">
					<h5>Design analysis</h5>
					<p>Study the design of the open source PHP frameworks.</p>
				</div>
			</li>
			<li>Your content goes here</li>
			<li>Your content goes here</li>
			<li>Your content goes here</li>
		</ul>
	</div>

	<script src="js/vendor/jquery.js"></script>
	<script src="js/foundation.min.js"></script>
	<script>
		$(document).foundation();
	</script>
</body>
</html>
