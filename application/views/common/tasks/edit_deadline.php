<div id="editDeadline" class="reveal-modal small" data-reveal>
	<h4 class='taskName'></h4>
	<p>Use the date picker below to select the new deadline.</p>
	<div class="space"></div>
	<?PHP echo form_open('tasks/deadline', array('id' => 'editDeadlineForm')); ?>
		
		<div class="space"></div>
		<input type='submit' class="button radius small" value='Edit deadline' />
	</form>
	<a class="close-reveal-modal" >&#215;</a>
</div>