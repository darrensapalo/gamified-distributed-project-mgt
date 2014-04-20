<!doctype html>
<html lang="en">
<head>
	<?PHP $this->load->view('common/header');  ?>
	<script src="<?PHP echo base_url(); ?>js/jquery-ui-timepicker-addon.js"></script>
	<script src="<?PHP echo base_url(); ?>js/tara/common.js"></script>
	<script src="<?PHP echo base_url(); ?>js/tara/tasks.js"></script>
	<script src="<?PHP echo base_url(); ?>js/tara/logs.js"></script>
	<script src="<?PHP echo base_url(); ?>js/tara/experience.js"></script>
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
	<?PHP $this->load->view('common/tasks/edit_tags'); ?>
	<?PHP $this->load->view('common/tasks/edit_deadline'); ?>
	<?PHP $this->load->view('common/tasks/edit_assignment'); ?>
	<?PHP $this->load->view('common/tasks/delete_task'); ?>
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
						<li><label><?PHP echo relativeTime($log->timestamp); ?></label></li>
						<li class='log-info'><?PHP echo $log->description; ?></li>
						<?PHP endforeach; ?>
					</ul>
				</aside>
				<aside class="right-off-canvas-menu">
					<ul class="off-canvas-list">
						<li><label>Project related links</label></li>
						<li><?PHP echo anchor('http://www.facebook.com/', 'Class repository'); ?></li>
						<li><?PHP echo anchor('https://ccs1.dlsu.edu.ph/', 'Course site'); ?></li>
						<li><?PHP echo anchor('http://www.php.net/manual/en/book.mysql.php', 'Database (MySQL)'); ?></li>
						<li><?PHP echo anchor('http://api.jquery.com/', 'JQuery documentation'); ?></li>
						<li><?PHP echo anchor('http://ellislab.com/codeigniter/user-guide/', 'CodeIgniter documentation'); ?></li>
						<li><?PHP echo anchor('http://schedninja.com/', 'Sched Ninja'); ?></li>
						<li><?PHP echo anchor('tasks', '<i class="fa fa-plus"></i> Add URL'); ?></li>

					</ul>
				</aside>

				<section class="main-section">
					<div class="large-10 large-offset-1 columns">
						<div class="panel">
							<div class="space"></div>
							<h1>Project management <small>redesigned</small></h1>
							<p>This page allows you to visualize the remaining things that you need to do.</p>
							<p>
								<a href="#" id="toggleSize" class="button small default"><i id='minimax' class='fa fa-minus'></i>Card size</a>
								<a href="#" id="toggleDesc" class="button small default"><i id='descminimax' class='fa fa-minus'></i>Description</a>
								<a href="#" id="toggleTags" class="button small default"><i class='fa fa-tags'></i>Tiny tags</a>
								<?PHP echo anchor('', 'Back to dashboard', array('class' => 'small button')); ?>
							</p>
						</div>

						<h2>Tasks <div class="right"><?php echo anchor('account/levelup', 'Level Up!', array('class' => 'button', 'id' => 'next-level', 'style' => 'display: none')); ?></div></h2>
						<hr>
						<!-- Experience bar -->
						<div class="experience progress small-12 large-12 success radius">
							<span class="experience meter" id="experience" style="width: 0%"> Experience <span id="exp-info"></span></span>
						</div>

						<!-- Task boards -->
						<ul class="small-block-grid-1 medium-block-grid-3 large-block-grid-3">
							<li>
								<div class="panel radius board">
									<h4>To-do
										<a href="#" id="addNewTask" data-reveal-id="newTask" class='right button small' data-reveal>
											<i class='fa fa-plus'></i>
											New task
										</a>
									</h4>
									<hr>
									<div class="tasks" title="To-do">
										<?PHP foreach ($tasks['todo'] as $task) $this->load->view('common/task_card', array('task' => $task)); ?>
									</div>
								</div>
							</li>
							<li>
								<div class="panel radius board">
									<h4>Doing </h4>
									<hr>
									<div class="tasks" title="Doing">
										<?PHP foreach ($tasks['doing'] as $task) $this->load->view('common/task_card', array('task' => $task)); ?>
									</div>
								</div>
							</li>
							<li>
								<div class="panel radius board">
									<h4>Done
										<a href='#' class='button small right' id='archive'>
											<i class='fa fa-archive'></i>
											Archive done tasks
										</a>
									</h4>
									<hr>
									<div class="tasks" title="Done">
										<?PHP foreach ($tasks['done'] as $task) $this->load->view('common/task_card', array('task' => $task)); ?>
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
