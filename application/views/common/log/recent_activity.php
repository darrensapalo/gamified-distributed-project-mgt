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
			<p><?PHP echo anchor('tasks', 'Start working', array('class' => 'button')); ?> <?PHP echo anchor('', 'Back to dashboard', array('class' => 'button default')); ?></p>
		</div>

<h2>Recent activity</h2>
<hr>
<table class="large-6 large-offset-3">
	<thead>
		<tr>
			<td width="10%">Log ID</td>
			<td width="20%">Timestamp</td>
			<td width="70%">Activity</td>
		</tr>
	</thead>

	<?PHP
	if (count($recent_activity) == 0)
		echo "<p>There were no recent activities. Start working!</p>";
	else
		foreach ($recent_activity as $log): 
			?>

	<tr>
		<td>
			<?PHP echo $log->log_id; ?>
		</td>
		<td>
			<?PHP echo relativeTime($log->timestamp); //date("Y-m-d H:i:s", $log->timestamp); // relativeTime($log->timestamp); ?>
		</td>

		<td>
			<?PHP echo $log->description; ?>
		</td>
	</td>
</tr>
<?PHP endforeach; ?>
</table>
</div>
</div>
<script src="js/foundation.min.js"></script>
<script>
$(document).foundation();
</script>
</body>
</html>
