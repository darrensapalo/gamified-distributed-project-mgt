<div id="newTask" class="reveal-modal small" data-reveal>
	<div class="large-12 columns">
		<h3><task id="taskName">Creating a new task</task></h3>
		<?PHP echo form_open('tasks/add'); ?>
		<!-- Task name -->
		<input type='text' id="new-task" name='name' placeholder='Task name'/>

		<!-- Task description -->
		<textarea placeholder="Task description" name='desc'></textarea>

		<!-- Deadline -->
		<input type="text" name="deadline" id="deadline">

		<!-- Labels -->
		<p>
			<input type='checkbox' name='label-0' value='0'>
			<span class="orange label">Changes and revisions</span>
		</p>
		<p>
			<input type='checkbox' name='label-1' value='1'>
			<span class="red label">Bugs</span>
		</p>
		<p>
			<input type='checkbox' name='label-2' value='2'>
			<span class="yellow label">Design</span>
		</p>
		<p>
			<input type='checkbox' name='label-3' value='3'>
			<span class="blue label">Code</span>
		</p>
		<p>
			<input type='checkbox' name='label-4' value='4'>
			<span class="green label">Literature Review</span>
		</p>
		<div class="space"></div>
		<input type='submit' class="button radius small" value="Add new task"/>
	</form>
</div>
<a class="close-reveal-modal" >&#215;</a>
</div>