<div id="selectTags" class="reveal-modal small" data-reveal>
	<h4 class='taskName'></h4>
	<p>Click which labels you wish to assign to this task.</p>
	<div class="space"></div>

	<?PHP echo form_open('tasks/tags', array('id' => 'assignTagsForm', 'class' => 'modal-form'), array('task_id' => '')); ?>
		<p>
			<input type='checkbox' name='label-0' id="change-tag-0" value='0'>
			<span class="orange label tag-select">Changes and revisions</span>
		</p>
		<p>
			<input type='checkbox' name='label-1' id="change-tag-1"  value='1'>
			<span class="red label tag-select">Bugs</span>
		</p>
		<p>
			<input type='checkbox' name='label-2' id="change-tag-2"  value='2'>
			<span class="yellow label tag-select">Design</span>
		</p>
		<p>
			<input type='checkbox' name='label-3' id="change-tag-3"  value='3'>
			<span class="blue label tag-select">Code</span>
		</p>
		<p>
			<input type='checkbox' name='label-4' id="change-tag-4"  value='4'>
			<span class="green label tag-select">Literature Review</span>
		</p>
		<div class="space"></div>
		<input type='submit' id="assignTags" class="button radius small" value='Assign tags' />
	</form>
	<a class="close-reveal-modal" >&#215;</a>
</div>