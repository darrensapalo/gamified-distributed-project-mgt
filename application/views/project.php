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
		<h2>Members</h2>
		<hr>
		<div class="panel">
			<p>Assign tasks and allow everyone to see what everyone else is doing to ensure there is progress.</p>
		</div>
		<ul class="small-block-grid-1 medium-block-grid-4 large-block-grid-4">
			<?PHP foreach ($users as $user): ?>
			<li>
				<div class="panel radius">
					<p><h4><?PHP echo $user->user_id; ?></h4></p>
					<p><?PHP echo $user->label; ?></p>
					<p>
						<span class="blue label">Level <?PHP echo $user->level; ?></span>
					</p>
					<p>
						<span class="green label"><?PHP echo $user->experience ?> experience</span>
					</p>
				</div>
			</li>
			<?PHP endforeach; ?>
		</ul>
		<h2>Task assignment</h2>
		<hr>
		<div class="panel">
			<p><strong>Distributed monitoring</strong> allows you to verify if tasks assigned to other people really are accomplished.</p>
		</div>
		<table class="large-10 large-offset-1">
			<thead>
				<tr>
					<td width="20%">Task</td>
					<td width="40%">Assigned to</td>
					<td width="10%">Deadline</td>
					<td width="20%">Actions</td>
				</tr>
			</thead>

			<?PHP
			if (count($assignments) == 0)
				echo "<p>There were no recent activities. Start working!</p>";
			else
				foreach ($assignments as $task):
					if (count($task->assigned_to) <= 0) continue;
				?>
			<tr>
				<td>
					<?PHP echo $task->name; ?>
				</td>

				<td>
					<?php foreach($task->assigned_to as $person){
						echo $person . " ";
					} ?>
				</td>
				<td>
					<?PHP echo $task->deadline; ?>
				</td>
				<td>
					<a href="" class="button radius small green"><i class="fa fa-check"></i>Confirm</a>
					<a href="" class="alert button small"><i class="fa fa-ban"></i>Report</a>
				</td>
			</td>
		</tr>
		<?PHP endforeach; ?>
	</table>
	<h2>Recent activity</h2>
	<div class="panel">
			<p>These logs show the different actions done by all of the members of the project.</p>
		</div>
	<hr>
	<table class="large-6 large-offset-3">
		<thead>
			<tr>
				<td width="30%">Timestamp</td>
				<td width="70%">Activity</td>
			</tr>
		</thead>

		<?PHP
		if (count($recent_activity) == 0)
			echo "<p>There were no recent activities. Start working!</p>";
		else
			foreach ($recent_activity as $log): ?>

		<tr>
			<td>
				<?PHP echo $log->timestamp; ?>
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
