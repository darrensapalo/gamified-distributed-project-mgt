<!doctype html>
<html lang="en">
<head>
	<?PHP $this->load->view('common/header');  ?>
</head>
<body>
	<?PHP $this->load->view('common/nav'); ?>
	<div class="large-10 large-offset-1 columns">
		<h2>Account settings</h2>
		<hr>
		<div class="panel">
			<p>
				This page will provide some way to retrieve the account when authentication fails.
			</p>
			<p>
				<?PHP echo anchor('', 'Back to dashboard', array('class' => 'button small')); ?>
			</p>
		</div>
	</div>
	<script src="js/foundation.min.js"></script>
	<script>
	$(document).foundation();
	</script>
</body>
</html>
