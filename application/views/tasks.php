<!doctype html>
<html lang="en">
<head>
	<?PHP $this->load->view('common/header');  ?>
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>

	<script>
	$(function() {
		$(".options").hide();

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

		$( "#toggleDeadline" ).click(function() {
			$( ".desc" ).toggle("fast");
			$( this ).toggleClass( "disabled" );
		});

		$( "#toggleTags" ).click(function() {
			$( ".label:not(.tag-select)" ).each(function(index) {
				var currentText = $( this ).text();
				if (currentText != ""){
					$( this ).data("text", $( this ).text());
					$( this ).text("");
				}else{
					$( this ).text($( this ).data("text"));
				}
			});
			$( this ).toggleClass( "disabled" );
		});

		$( ".tag-select" ).click(function() {
			$( this ).toggleClass( "selected" );
		});

		$( ".task" ).dblclick(function() {
			$( this ).children( "div[class='options']" ).toggle("fast");
		});

		$('.input-text').editable();
	});



</script>
</head>
<body>
	<?PHP $this->load->view('common/nav'); ?>
	<?PHP $this->load->view('common/tag-selection'); ?>
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
				<a href="#" id="toggleDesc" class="button small default"><i class='fa fa-comment'></i>Descriptions</a>
				<a href="#" id="toggleTags" class="button small default disabled"><i class='fa fa-tags'></i>Tiny tags</a>
				
				
			</div>
		</div>
	</div>
	<div class="row">
		<ul class="small-block-grid-1 medium-block-grid-3 large-block-grid-3">
			<li>
				<div class="panel radius board">
					<h4>To-do</h4>
					<hr>
					<div class="tasks">
						<div class="panel task">
							<div class="right">
								<span class="blue label">Code</span>
							</div>
							<h6><a href="" class="input-text" data-type="text" data-url="/task/title-edit/" data-pk="1" data-id="name">Design analysis</a></h6>
							<p class='desc'>
								<a href="" class="input-text" data-type="textarea" data-url="/task/desc-edit/" data-pk="1" data-id="desc">Study the design of the open source PHP frameworks.</a>
							</p>
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
			<li>
				<div class="small-centered large-centered small-block-grid-2 medium-block-grid-2 large-block-grid-2">
					<div class="panel radius board">
						<h4>Done</h4>
						<hr>
						<div class="tasks"></div>
					</div>
				</div>
			</li>
		</ul>
		
	</div>
	<script src="js/foundation.min.js"></script>
	<script>
	$(document).foundation();
	</script>
</body>
</html>
