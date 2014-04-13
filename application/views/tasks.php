<!doctype html>
<html lang="en">
<head>
	<?PHP $this->load->view('common/header');  ?>
	<script src="<?PHP echo base_url(); ?>js/tara/common.js"></script>
	<script src="<?PHP echo base_url(); ?>js/tara/tasks.js"></script>
</head>
<body>
	<?PHP $this->load->view('common/nav'); ?>
	<?PHP $this->load->view('common/tag-selection'); ?>
	<?PHP $this->load->view('common/new-task'); ?>
	<div class="row">
		<div class="large-12 columns">
			<h1><i class="fa fa-tasks"></i>CSC755M</h1>
			<hr>
		</div>
	</div>	
	<div class="row">
		<div class="large-12 columns">
			<div class="row">
				<div class="large-6 columns">
					<div class="panel">
						<p>On this page, you can view the list of tasks you are currently assigned to. Double click tasks to see more options.</p>
						<a href="#" id="toggleDesc" class="button small default"><i class='fa fa-comment'></i>Descriptions</a>
						<a href="#" id="toggleTags" class="button small default disabled"><i class='fa fa-tags'></i>Tiny tags</a>
					</div>
				</div> 
				<div class="large-6 columns">
					<div class="panel">
						<p id="log"></p>
					</div>
				</div> 
			</div>
		</div>
	</div>
	<div class="row">

		<ul class="small-block-grid-1 medium-block-grid-3 large-block-grid-3">
			<li>
				<div class="panel radius board">
					<h4>To-do <a href="#" data-reveal-id="newTask" data-reveal><i class='fa fa-plus right button small'></i></a></h4>
					<hr>
					<div class="tasks">
						<?PHP foreach ($tasks['todo'] as $task): ?>
						<div class="panel task" title="<?PHP echo $task->name; ?>">
							<div class="right">
								<?PHP
								// Display all tags
								foreach ($task->tags as $tag){
									echo "<span class='{$tag['color']} label'>{$tag['tags']}</span> ";
								}
								?>
							</div>
							<h6><a href="" class="task-input" data-type="text" data-title="Task name" data-pk="<?PHP echo $task->id; ?>" data-id="name"><?PHP echo $task->name; ?></a></h6>
							<p class='desc'>
								<a href="" class="task-input" data-type="textarea" data-title="Task description" data-pk="<?PHP echo $task->id; ?>" data-id="desc"><?PHP echo $task->desc; ?></a>
							</p>
							<hr>
							<p><i class='fa fa-clock-o'></i> <?PHP echo $task->deadline_from_now ?></p>
							<div class="options">
								<hr>
								<a href="#" data-reveal-id="selectTags" data-reveal class="button extra-small default"><i class='fa fa-tags'></i> Edit tags</a>
							</div>
						</div>
						<?PHP endforeach; ?>
					</div>
				</div>
			</li>
			<li>
				<div class="panel radius board">
					<h4>Doing </h4>
					<hr>
					<div class="tasks">
						<?PHP foreach ($tasks['doing'] as $task): ?>
						<div class="panel task">
							<div class="right">
								<?PHP
								// Display all tags
								foreach ($task->tags as $tag){
									echo "<span class='{$tag['color']} label'>{$tag['tags']}</span> ";
								}
								?>
							</div>
							<h6><a href="" class="task-input" data-type="text" data-title="Task name" data-pk="<?PHP echo $task->id; ?>" data-id="name"><?PHP echo $task->name; ?></a></h6>
							<p class='desc'>
								<a href="" class="task-input" data-type="textarea" data-title="Task description" data-pk="<?PHP echo $task->id; ?>" data-id="desc"><?PHP echo $task->desc; ?></a>
							</p>
							<hr>
							<p><i class='fa fa-clock-o'></i> <?PHP echo $task->deadline_from_now ?></p>
							<div class="options">
								<hr>
								<a href="#" data-reveal-id="selectTags" data-reveal class="button extra-small default" data-title="<?PHP echo $task->name; ?>"><i class='fa fa-tags'></i> Edit tags</a>
							</div>
						</div>
						<?PHP endforeach; ?>
					</div>
				</div>
			</li>
			<li>
				<div class="panel radius board">
					<h4>Done </h4>
					<hr>
					<div class="tasks">
						<?PHP foreach ($tasks['done'] as $task): ?>
						<div class="panel task">
							<div class="right">
								<?PHP
								// Display all tags
								foreach ($task->tags as $tag){
									echo "<span class='{$tag['color']} label'>{$tag['tags']}</span> ";
								}
								?>
							</div>
							<h6><a href="" class="task-input" data-type="text" data-title="Task name" data-pk="<?PHP echo $task->id; ?>" data-id="name"><?PHP echo $task->name; ?></a></h6>
							<p class='desc'>
								<a href="" class="task-input" data-type="textarea" data-title="Task description" data-pk="<?PHP echo $task->id; ?>" data-id="desc"><?PHP echo $task->desc; ?></a>
							</p>
							<hr>
							<p><i class='fa fa-clock-o'></i> <?PHP echo $task->deadline_from_now ?></p>
							<div class="options">
								<hr>
								<a href="#" data-reveal-id="selectTags" data-reveal class="button extra-small default" data-title="<?PHP echo $task->name; ?>"><i class='fa fa-tags'></i> Edit tags</a>
							</div>
						</div>
						<?PHP endforeach; ?>
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
