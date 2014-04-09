<!doctype html>
<html lang="en">
<head>
	<?PHP $this->load->view('common/header');  ?>
	<script>
	$(function() {
		$(".task").draggable({ opacity: 0.7, helper: "clone" });
	});
	</script>
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

		<ul class="small-block-grid-1 medium-block-grid-3 large-block-grid-3">

			<li>
				<div class="panel radius grid-column">
					<h4>To-do</h4>
					<div class="panel task">
						<h6>Design analysis</h6>
						<p style='hide'>Study the design of the open source PHP frameworks.</p>
						<span class="default label">15d</span>
						<span class="blue label"></span>
					</div>
				</div>
			</li>
			<li>
				<div class="panel radius grid-column">
					<h4>Doing</h4>
					<div class="panel task">
						<h6>Test prototype</h6>
						<p>
							Allow the determined target users to use the prototype and apply contextual inquiry user research method.
						</p>
						<span class="default label">3d</span>
						<span class="orange label"></span>
					</div>
				</div>
			</li>
			<li>
				<div class="panel radius grid-column">
					<h4>Done</h4>
				</div>
			</li>
		</ul>
	</div>
	<script>
	$(document).foundation();
	</script>
</body>
</html>
