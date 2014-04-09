<!doctype html>
<html lang="en">
<head>
	<?PHP $this->load->view('common/header');  ?>
	<script>
	$(function() {
		$(".task").draggable({
			opacity: 0.7,
			helper: "clone",
			cursor: "move"
		});
		$(".desc").hide();
		$( ".board" ).droppable({
			accept: ".task",
			activeClass: "ui-state-hover",
			hoverClass: "ui-state-active",
			drop: function( event, ui ) {
				$( this )
				.append( ui.draggable );
			}
		});
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
				<div class="panel radius board">
					<h4>To-do</h4>
					<hr>
					<div class="panel task">
						<div class="right">
							<span class="blue label"></span>
						</div>
						<h6>Design analysis</h6>
						<p class='desc'>Study the design of the open source PHP frameworks.</p>
						<hr>
						<p><i class='fa fa-clock-o'></i> 15 days left.</p>
					</div>
				</div>
			</li>
			<li>
				<div class="panel radius board">
					<h4>Doing</h4>
					<hr>
					<div class="panel task">
						<div class="right">
							<span class="orange label"></span>
							<span class="red label"></span>
							<span class="yellow label"></span>
							<span class="blue label"></span>
							<span class="green label"></span>
							<span class="red label"></span>
							<span class="yellow label"></span>
						</div>
						<h6>
							Test prototype
						</h6>
						<p class='desc'>
							Allow the determined target users to use the prototype and apply contextual inquiry user research method.
						</p>
						<hr>
						<p class='deadline'><i class='fa fa-clock-o'></i> 3 days left.</p>
					</div>
				</div>
			</li>
			<li>
				<div class="panel radius board">
					<h4>Done</h4>
					<hr>
				</div>
			</li>
		</ul>
	</div>
</body>
</html>
