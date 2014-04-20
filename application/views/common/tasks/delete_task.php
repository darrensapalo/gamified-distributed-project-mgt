<div id="deleteTask" class="reveal-modal small" data-reveal>
	<h4 class='taskName'></h4>
	<p>Are you sure you wish to delete this task?</p>
	<div class="space"></div>
	<?php echo anchor('tasks/delete', 'Permanently delete', array('class' => 'button small red')); ?>
	<a class="close-reveal-modal" >&#215;</a>
</div>