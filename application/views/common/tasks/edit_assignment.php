<div id="assignPerson" class="reveal-modal small" data-reveal>
	<h4 class='taskName'></h4>
	<p>Currently you can only assign one person at a time. Please select the person you want to assign to this task.</p>
	<div class="space"></div>

	<?PHP echo form_open('tasks/assign', array('id' => 'assignPersonForm')); ?>
		
		<div class="space"></div>
		<input type='submit' class="button radius small" value='Assign person' />
	</form>
	<a class="close-reveal-modal" >&#215;</a>
</div>