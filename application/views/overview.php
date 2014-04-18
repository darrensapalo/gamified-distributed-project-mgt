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
		<div class="panel">
			<div class="space"></div>
			<h1>Project management <small>redesigned</small></h1>
			<p>You can earn more experience and level up by adding tasks, moving tasks to their appropriate boards, and accomplishing tasks!</p>
			<?PHP echo anchor('tasks', 'Start working', array('class' => 'button')); ?>
			<?PHP echo anchor('', 'Back to dashboard', array('class' => 'button default')); ?>
		</div>
	<h2>Tasks assignment</h2>
	<hr>

	<?PHP
	$amount = 0;
	foreach ($assignments as $task){
		if (count($task->assigned_to) <= 0) continue;

		$amount++;
	}
	if ($amount <= 0):
		echo "<div class='panel'><p><strong>No finished tasks</strong> so start working!</p></div>";
	else:
		?>
	<table class="large-10 large-offset-1">
		<thead>
			<tr>
				<td width="30%">Task</td>
				<td width="30%">Assigned to</td>
				<td width="20%">Deadline</td>
				<td width="20%">Actions</td>
			</tr>
		</thead>

		<?PHP
		foreach ($assignments as $task):
			if (count($task->assigned_to) <= 0) continue;
		?>
		<tr>
			<td>
				<?PHP echo $task->name; ?>
			</td>

			<td>
				<?php foreach($task->assigned_to as $person){
					echo "<i class='fa fa-user'></i> " . $person['user_id'] . ' ';
				} ?>
			</td>
			<td>
				<?PHP echo $task->deadline_from_now;
				if ($task->board > 0)
					echo ' (Finished)';
				?>
			</td>
			<td>
				<?PHP if($task->board > 0) {

					echo anchor('tasks', 'Confirm', array('class' => 'button radius small green'));
					echo ' ';

					echo anchor('tasks', 'Report', array('class' => 'button radius small alert'));
					echo ' ';	
				}else{
					echo anchor('', 'Remind', array('class' => 'button radius small yellow'));	
				}
				
				?>
			</td>
		</td>
	</tr>
	<?PHP endforeach; ?>
</table>
<?PHP endif; ?>

</div>
</div>
<script src="js/foundation.min.js"></script>
<script>
$(document).foundation();
</script>
</body>
</html>
