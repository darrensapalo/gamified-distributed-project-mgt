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
</head>
<body>
	<?PHP $this->load->view('common/nav'); ?>
	<div class="large-10 large-offset-1 columns">
		<div class="panel">
			<div class="space"></div>
			<h1>Project management <small>redesigned</small></h1>
			<p>You can earn more experience and level up by adding tasks, moving tasks to their appropriate boards, and accomplishing tasks!</p>
			<?PHP echo anchor('tasks', 'Start working', array('class' => 'button')); ?>
		</div>
		<?php if (isset($error)): ?>
		<div data-alert class="alert-box warning">
			<?php echo $error; ?>
			<a href="#" class="close">&times;</a>
		</div>
	<?php endif; ?>
	<?php if (isset($success)): ?>
		<div data-alert class="alert-box success">
			<?php echo $success; ?>
			<a href="#" class="close">&times;</a>
		</div>
	<?php endif; ?>
	<?php if (isset($info)): ?>
		<div data-alert class="alert-box info radius">
			<?php echo $info; ?>
			<a href="#" class="close">&times;</a>
		</div>
	<?php endif; ?>

		<h2>Teammates <small>CSC755M</small></h2>
		<hr>
		<ul class="small-block-grid-1 medium-block-grid-3 large-block-grid-3">
			<?PHP foreach ($users as $user):
			$max = $user->experience_to_next_level;
			$expPercentage = ($user->experience / $max) * 100;
			switch($user->level){
				case 0:
				case 1:
				case 2: $level_effect = "blue";
				break;
				case 3: 
				case 4: 
				case 5: $level_effect = "yellow";
				break;
				case 6: 
				case 7: 
				case 8: $level_effect = "orange";
				break;
				case 9: 
				case 10: 
				case 11: $level_effect = "red";
				break;
			}
			?>
			<li class='teammate'>
				<div class="panel radius">
					<h4><i class="fa fa-user"></i><?PHP echo $user->user_id; ?></h4>
					<span class="<?PHP echo $level_effect; ?> label user-label">Level <?PHP echo $user->level . " " . $user->label; ?></span>
					<div class="progress success radius">
						<span class="meter experience" style="width: <?PHP echo "$expPercentage%"; ?>"><?PHP echo "$user->experience / $max experience"; ?></span>
					</div>
				</p>
				<div class="badges hide-for-medium-only">
					<hr>
					<h6>Badges earned</h6>
					<?PHP if (rand(0, 100) < 70): ?>
					<p><i class="fa fa-html5"></i> HTML5 Mastery</p>
					<?PHP endif; ?>
					<?PHP if (rand(0, 100) < 50): ?>
					<p><i class="fa fa-rocket"></i> Rapid Developer</p>
					<?PHP endif; ?>
					<?PHP if (rand(0, 100) < 40): ?>
					<p><i class="fa fa-fire-extinguisher"></i> Bug fixer</p>
					<?PHP endif; ?>
				</div>
			</div>
		</li>
		<?PHP endforeach; ?>
	</ul>
</div>
<script src="js/foundation.min.js"></script>
<script>
$(document).foundation();
</script>
</body>
</html>
