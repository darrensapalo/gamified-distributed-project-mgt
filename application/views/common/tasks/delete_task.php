<div id="deleteTask" class="reveal-modal small" data-reveal>
	<h4 class='taskName'></h4>
	<?PHP echo form_open('tasks/archive', array('id' => 'deleteTaskForm', 'class' => 'modal-form'), array('task_id' => '')); ?>
	<p>Are you sure you wish to remove this task?</p>
	<input type='submit' class="button radius small red" value='Archive task' />
</form>
<a class="close-reveal-modal" >&#215;</a>
</div>