<!doctype html>
<html lang="en">
<head>
	<style type="text/css">
	.task-placeholder {
		border: 1px dotted black;
		margin: 0 1em 1em 0;
		height: 50px;
	}
	</style>
	<?PHP $this->load->view('common/header');  ?>
	<script>
	$(function() {
		$(".desc").hide();
		
		$( ".tasks" ).sortable({
			helper: "clone",
			placeholder: "ui-state-highlight .task-placeholder ",
			connectWith: ".tasks"
		});
	});



	</script>
</head>
<body>
	<?PHP $this->load->view('common/nav'); ?>
	<div class="large-10 large-offset-1 columns">
		<h2>Account settings</h2>
		<hr>
		<div class="panel">
			<p>
				Have some account settings here.

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
