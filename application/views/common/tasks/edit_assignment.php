<script>
$(function() {
	var user_list = <?PHP echo json_encode($assign_user_list) ?>;
	console.log(user_list);
	$( "#select_teammate" ).autocomplete({
		source: user_list
	});
});
</script>
<div id="assignPerson" class="reveal-modal small" data-reveal>
	<h4 class='taskName'></h4>
	<p>Currently you can only assign one teammate at a time. Please select the teammate you want to assign to this task.</p>
	<div class="space"></div>

	<?PHP echo form_open('tasks/assign', array('id' => 'assignPersonForm', 'class' => 'modal-form'), array('task_id' => '')); ?>
	<label for="select_teammate">Teammate: </label>
		<input id="select_teammate" name='user_id' type='text'>
	<div class="space"></div>
	<input type='submit' class="button radius small" value='Assign person' />
</form>
<a class="close-reveal-modal" >&#215;</a>
</div>