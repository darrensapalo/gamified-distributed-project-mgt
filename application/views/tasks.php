<!doctype html>
<html lang="en">
<head>
	<?PHP $this->load->view('common/header');  ?>
	<script src="<?PHP echo base_url(); ?>js/jquery-ui-timepicker-addon.js"></script>
	<script src="<?PHP echo base_url(); ?>js/tara/common.js"></script>
	<script src="<?PHP echo base_url(); ?>js/tara/tasks.js"></script>
	<script src="<?PHP echo base_url(); ?>js/tara/logs.js"></script>
	<style type="text/css">
body,html{
    height:100%;
    width:100%;
}

.off-canvas-wrap,.inner-wrap{
    height:100%;   
}
	</style>
</head>
<body>
	<?PHP $this->load->view('common/tag-selection'); ?>
	<?PHP $this->load->view('common/new-task'); ?>
	<div class="page">
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
					<li><?PHP echo anchor('', 'Class repository'); ?></li>
					<li><?PHP echo anchor('', 'Website'); ?></li>
					<li><?PHP echo anchor('', 'Database (MySQL)'); ?></li>
					<li><?PHP echo anchor('', 'JQuery documentation'); ?></li>
					<li><?PHP echo anchor('', 'CodeIgniter documentation'); ?></li>
				</ul>
			</aside>

			<section class="main-section">
				<div class="large-10 large-offset-1 columns">
					<div class="panel">
						<div class="space"></div>
						<h1>Project management <small>redesigned</small></h1>
						<p>This page allows you to visualize the remaining things that you need to do.</p>
						<p>
							<a href="#" id="toggleDesc" class="button small default"><i id='minimax' class='fa fa-minus'></i>Card size</a>
							<a href="#" id="toggleTags" class="button small default"><i class='fa fa-tags'></i>Tiny tags</a>
							<?PHP echo anchor('', 'Back to dashboard', array('class' => 'small button')); ?>
						</p>
					</div>
					<h2>Tasks</h2>
					<hr>
					<div class="experience progress small-12 large-12 success radius">
						<span class="experience meter" id="experience" style="width: 0%"> Experience <span id="exp-info"></span></span>
					</div>
					<ul class="small-block-grid-1 medium-block-grid-3 large-block-grid-3">
						<li>
							<div class="panel radius board">
								<h4>To-do <a href="#" id="addNewTask" data-reveal-id="newTask" class='right button small' data-reveal><i class='fa fa-plus'></i> New task</a></h4>
								<hr>
								<div class="tasks" title="To-do">
									<?PHP foreach ($tasks['todo'] as $task):
									?>
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
										<div class="others">
										<p class='desc'>
											<a href="" class="task-input" data-type="textarea" data-title="Task description" data-pk="<?PHP echo $task->id; ?>" data-name="desc"><?PHP echo $task->desc; ?></a>
										</p>
										<hr>
										<p><i class='fa fa-clock-o'></i> <?PHP echo $task->deadline_from_now ?></p>
										<?php 
										if (count($task->assigned_to) > 0):?>
										<?PHP foreach($task->assigned_to as $person): ?>
										<p><i class='fa fa-user'></i> <?PHP echo $person['user_id'] . " ";?></p>
										<?PHP endforeach; ?>
										<?PHP endif; ?>
										<div class="options">
											<hr>
											<a href="#" data-reveal-id="selectTags" data-reveal class="button extra-small select-tags default" data-task-id="<?PHP echo $task->id; ?>" data-title="<?PHP echo $task->name; ?>"><i class='fa fa-tags'></i> Edit tags</a>
										</div>
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
										<div class="others">
										<p class='desc'>
											<a href="" class="task-input" data-type="textarea" data-title="Task description" data-pk="<?PHP echo $task->id; ?>" data-name="desc"><?PHP echo $task->desc; ?></a>
										</p>
										<hr>
										<p><i class='fa fa-clock-o'></i> <?PHP echo $task->deadline_from_now ?></p>
										<?php 
										if (count($task->assigned_to) > 0):?>
										<?PHP foreach($task->assigned_to as $person): ?>
										<p><i class='fa fa-user'></i> <?PHP echo $person['user_id'] . " ";?></p>
										<?PHP endforeach; ?>
										<?PHP endif; ?>
										<div class="options">
											<hr>
											<a href="#" data-reveal-id="selectTags" data-reveal class="button extra-small select-tags default" data-task-id="<?PHP echo $task->id; ?>" data-title="<?PHP echo $task->name; ?>"><i class='fa fa-tags'></i> Edit tags</a>
										</div>
										</div>
									</div>
									<?PHP endforeach; ?>
								</div>
							</div>
						</li>
						<li>
							<div class="panel radius board">
								<h4>Done <a href='#' class='button small right' id='archive'><i class='fa fa-archive'></i> Archive done tasks</a></h4>
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
										<div class="others">
										<p class='desc'>
											<a href="" class="task-input" data-type="textarea" data-title="Task description" data-pk="<?PHP echo $task->id; ?>" data-name="desc"><?PHP echo $task->desc; ?></a>
										</p>
										<hr>
										<p><i class='fa fa-clock-o'></i> <?PHP echo $task->deadline_from_now ?></p>
										<?php 
										if (count($task->assigned_to) > 0):?>
										<?PHP foreach($task->assigned_to as $person): ?>
										<p><i class='fa fa-user'></i> <?PHP echo $person['user_id'] . " ";?></p>
										<?PHP endforeach; ?>
										<?PHP endif; ?>
										<div class="options">
											<hr>
											<a href="#" data-reveal-id="selectTags" data-reveal class="button extra-small select-tags default" data-task-id="<?PHP echo $task->id; ?>" data-title="<?PHP echo $task->name; ?>"><i class='fa fa-tags'></i> Edit tags</a>
										</div>
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
	</div>
	</div>
	<script>
	$(document).foundation();
	</script>
</body>
</html>
