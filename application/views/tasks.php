<!doctype html>
<html lang="en">
<head>
	<?PHP $this->load->view('common/header');  ?>
	<script src="<?PHP echo base_url(); ?>js/jquery-ui-timepicker-addon.js"></script>
	<script src="<?PHP echo base_url(); ?>js/tara/common.js"></script>
	<script src="<?PHP echo base_url(); ?>js/tara/tasks.js"></script>
	<script src="<?PHP echo base_url(); ?>js/tara/logs.js"></script>
</head>
<body>
	<?PHP $this->load->view('common/tag-selection'); ?>
	<?PHP $this->load->view('common/new-task'); ?>
	<div class="off-canvas-wrap" data-offcanvas>
		<div class="inner-wrap">
			<nav class="tab-bar">
				<section class="left-small">
					<a class="left-off-canvas-toggle menu-icon" href="#"><span></span></a>
				</section>
				<section class="right-small">
					<a class="right-off-canvas-toggle menu-icon" href="#"><span></span></a>
				</section>

				<section class="middle tab-bar-section">
					<h1>CSC755M</h1>
				</section>
			</nav>

			<aside class="left-off-canvas-menu">
				<ul class="off-canvas-list" id="log-entries">
					
					<?PHP
					if (count($logs) == 0)
						echo "<li><label>No recent logs</label></li>";
					else
						foreach ($logs as $log): ?>
					<li><label><?PHP echo $log->timestamp; ?></label></li>
					<li class='log-info'><?PHP echo $log->description; ?></li>
					<?PHP endforeach; ?>
				</ul>
			</aside>
			<aside class="right-off-canvas-menu">
				<ul class="off-canvas-list">
					<li><label>Links</label></li>
					<li><?PHP echo anchor('', 'Home'); ?></li>
				</ul>
			</aside>

			<section class="main-section">
				<div class="large-10 large-offset-1 columns">
					<div class="progress small-12 large-12 success radius">
						<span class="meter" id="experience" style="width: 0%"> Experience </span>
					</div>
					<div class="panel">
						<p>On this page, you can view the list of tasks you are currently assigned to. Double click tasks to see more options.</p>
						<a href="#" id="toggleDesc" class="button small default"><i class='fa fa-comment'></i>Descriptions</a>
						<a href="#" id="toggleTags" class="button small default"><i class='fa fa-tags'></i>Tiny tags</a>
					</div>
					<ul class="small-block-grid-1 medium-block-grid-3 large-block-grid-3">
						<li>
							<div class="panel radius board">
								<h4>To-do <a href="#" id="addNewTask" data-reveal-id="newTask" data-reveal><i class='fa fa-plus right button small'></i></a></h4>
								<hr>
								<div class="tasks" title="To-do">
									<?PHP foreach ($tasks['todo'] as $task): ?>
									<div class="panel task" title="<?PHP echo $task->name; ?>" data-task-id="<?PHP echo $task->id; ?>">
										<h6><a href="" class="task-input" data-type="text" data-title="Task name" data-pk="<?PHP echo $task->id; ?>" data-name="name"><?PHP echo $task->name; ?></a>
											<div class="right tags">
												<?PHP
												// Display all tags
												foreach ($task->tags as $tag){
													echo "<span class='{$tag['color']} label task-label'>{$tag['tags']}</span> ";
												}
												?>
											</div>
										</h6>

										<p class='desc'>
											<a href="" class="task-input" data-type="textarea" data-title="Task description" data-pk="<?PHP echo $task->id; ?>" data-name="desc"><?PHP echo $task->desc; ?></a>
										</p>
										<hr>
										<p><i class='fa fa-clock-o'></i> <?PHP echo $task->deadline_from_now ?></p>
										<div class="options">
											<hr>
											<a href="#" data-reveal-id="selectTags" data-reveal class="button extra-small select-tags default" data-task-id="<?PHP echo $task->id; ?>" data-title="<?PHP echo $task->name; ?>"><i class='fa fa-tags'></i> Edit tags</a>
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
								<div class="tasks" title="Doing">
									<?PHP foreach ($tasks['doing'] as $task): ?>
									<div class="panel task" title="<?PHP echo $task->name; ?>" data-task-id="<?PHP echo $task->id; ?>">
										<h6><a href="" class="task-input" data-type="text" data-title="Task name" data-pk="<?PHP echo $task->id; ?>" data-name="name"><?PHP echo $task->name; ?></a>
											<div class="right tags">
												<?PHP
								// Display all tags
												foreach ($task->tags as $tag){
													echo "<span class='{$tag['color']} label task-label'>{$tag['tags']}</span> ";
												}
												?>
											</div>
										</h6>
										<p class='desc'>
											<a href="" class="task-input" data-type="textarea" data-title="Task description" data-pk="<?PHP echo $task->id; ?>" data-name="desc"><?PHP echo $task->desc; ?></a>
										</p>
										<hr>
										<p><i class='fa fa-clock-o'></i> <?PHP echo $task->deadline_from_now ?></p>
										<div class="options">
											<hr>
											<a href="#" data-reveal-id="selectTags" data-reveal class="button extra-small select-tags default" data-task-id="<?PHP echo $task->id; ?>" data-title="<?PHP echo $task->name; ?>"><i class='fa fa-tags'></i> Edit tags</a>
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
								<div class="tasks" title="Done">
									<?PHP foreach ($tasks['done'] as $task): ?>
									<div class="panel task" title="<?PHP echo $task->name; ?>" data-task-id="<?PHP echo $task->id; ?>">
										<h6><a href="" class="task-input" data-type="text" data-title="Task name" data-pk="<?PHP echo $task->id; ?>" data-name="name"><?PHP echo $task->name; ?></a>
											<div class="right tags">
												<?PHP
												// Display all tags
												foreach ($task->tags as $tag){
													echo "<span class='{$tag['color']} label task-label'>{$tag['tags']}</span> ";
												}
												?>
											</div>
										</h6>
										<p class='desc'>
											<a href="" class="task-input" data-type="textarea" data-title="Task description" data-pk="<?PHP echo $task->id; ?>" data-name="desc"><?PHP echo $task->desc; ?></a>
										</p>
										<hr>
										<p><i class='fa fa-clock-o'></i> <?PHP echo $task->deadline_from_now ?></p>
										<div class="options">
											<hr>
											<a href="#" data-reveal-id="selectTags" data-reveal class="button extra-small select-tags default" data-task-id="<?PHP echo $task->id; ?>" data-title="<?PHP echo $task->name; ?>"><i class='fa fa-tags'></i> Edit tags</a>
										</div>
									</div>
									<?PHP endforeach; ?>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</section>
		</div>
		<script src="js/foundation.min.js"></script>
		<script>
		$(document).foundation();
		</script>
	</body>
	</html>
