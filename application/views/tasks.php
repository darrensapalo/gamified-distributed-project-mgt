<!doctype html>
<html lang="en">
<head>
	<?PHP $this->load->view('common/header');  ?>
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>

	<script>
	$(function() {
		$(".desc").hide();
		$("div.options").hide();
		
		$( ".tasks" ).sortable({
			helper: "clone",
			placeholder: "ui-state-highlight .task-placeholder ",
			connectWith: ".tasks",
			delay: 250
		});

		$( "#toggleDesc" ).click(function() {
			$( ".desc" ).toggle("fast");
			$( this ).toggleClass( "disabled" );
		});

		$( ".tag-select" ).click(function() {
			$( this ).toggleClass( "selected" );
		});

		$( ".task" ).dblclick(function() {
			$( this ).children( "div[class='options']" ).toggle("fast");
		});

		$.fn.editable.defaults.mode = 'inline';
		$('.input-text').editable();
	});



	</script>
</head>
<body>
	<?PHP $this->load->view('common/nav'); ?>
	<div id="selectTags" class="reveal-modal tiny" data-reveal>
		<h2><task id="taskName">Design analysis</task></h2>
		<p>Click which labels you wish to assign to this task.</p>
		<p><span class="orange label tag-select">Changes and revisions</span></p>
		<p><span class="red label tag-select">Bugs</span></p>
		<p><span class="yellow label tag-select">Design</span></p>
		<p><span class="blue label tag-select">Code</span></p>
		<p><span class="green label tag-select">Literature Review</span></p>
		<div class="space"></div>
		<a class="button small">Assign tags</a>
		<a class="close-reveal-modal" >&#215;</a>
	</div>
	<div class="row">
		<div class="large-12 columns">
			<h1><i class="fa fa-tasks"></i>CSC755M</h1>
			<hr>
		</div>
	</div>	
	<div class="row">
		<div class="large-12 columns">
			<div class="panel">
				<p>On this page, you can view the list of tasks you are currently assigned to.</p>
				<p>Double click to open more options for a single task.</p>
				<a href="#" id="toggleDesc" class="button small default disabled"><i class='fa fa-comment'></i>Descriptions</a>
				
				
			</div>
		</div>
	</div>
	<div class="row">
		<ul class="small-block-grid-1 medium-block-grid-2 large-block-grid-2">
			<li>
				<div class="panel radius board">
					<h4>To-do</h4>
					<hr>
					<div class="tasks">
						<div class="panel task">
							<div class="right">
								<span class="blue label">Code</span>
							</div>
							<h6><a href="" class="input-text" data-type="text" data-url="/task/edit/" data-pk="1" data-id="name">Design analysis</a></h6>
							<p class='desc'>Study the design of the open source PHP frameworks.</p>
							<hr>
							<p><i class='fa fa-clock-o'></i> 15 days left.</p>
							<div class="options">
								<hr>
								<a href="#" data-reveal-id="selectTags" data-reveal class="button extra-small default"><i class='fa fa-tags'></i> Edit tags</a>
							</div>
						</div>
					</div>
				</div>
			</li>
			<li>
				<div class="panel radius board">
					<h4>Doing</h4>
					<hr>
					<div class="tasks">
						<div class="panel task">
							<div class="right">
								<span class="orange label">Changes and revisions</span>
								<span class="red label">Bugs</span>
								<span class="yellow label">Design</span>
								<span class="blue label">Code</span>
								<span class="green label">Literature Review</span>
								
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
				</div>
			</li>
		</ul>
		<div class="small-centered large-centered small-block-grid-2 medium-block-grid-2 large-block-grid-2">
			<div class="panel radius board">
				<h4>Done</h4>
				<hr>
				<div class="tasks"></div>
			</div>
		</div>
	</div>
	<script src="js/foundation.min.js"></script>
	<script>
	$(document).foundation();
	</script>
</body>
</html>
