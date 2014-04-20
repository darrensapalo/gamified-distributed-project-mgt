<div class="panel task" title="<?PHP echo $task->name; ?>" data-task-id="<?PHP echo $task->id; ?>">
	<h6><a href="#" class="task-input" data-type="text" data-title="Task name" data-pk="<?PHP echo $task->id; ?>" data-name="name"><?PHP echo $task->name; ?></a>
		<div class="right tags">
			<?PHP
			// Display all tags
			foreach ($task->tags as $tag)
				echo "<span class='{$tag['color']} label task-label'>{$tag['tags']}</span> ";
			?>
		</div>
	</h6>
	<div class="others">
		<p class='desc'>
			<a href="#" class="task-input" data-type="textarea" data-title="Task description" data-pk="<?PHP echo $task->id; ?>" data-name="desc"><?PHP echo $task->desc; ?></a>
		</p>
		<hr>
		<p><i class='fa fa-clock-o'></i> <?PHP echo $task->deadline_from_now ?></p>
		<?php 
		if (count($task->assigned_to) > 0):?>
		<?PHP foreach($task->assigned_to as $person): ?>
		<p><i class='fa fa-user'></i> <?PHP echo $person['user_id'] . " ";?></p>
		<?PHP endforeach; ?>
		<?PHP endif; ?>
		<div class="options">
			<hr>
			<a href="#" data-reveal-id="editDeadline" data-reveal class="button extra-small open-modal default" data-task-id="<?PHP echo $task->id; ?>" data-title="<?PHP echo $task->name; ?>"><i class='fa fa-clock-o'></i>Deadline</a>
			<a href="#" data-reveal-id="assignPerson" data-reveal class="button extra-small open-modal default" data-task-id="<?PHP echo $task->id; ?>" data-title="<?PHP echo $task->name; ?>"><i class='fa fa-user'></i> Assign to...</a>
			<a href="#" data-reveal-id="selectTags" data-reveal class="button extra-small open-modal default" data-task-id="<?PHP echo $task->id; ?>" data-title="<?PHP echo $task->name; ?>"><i class='fa fa-tags'></i></a>
			<a href="#" data-reveal-id="deleteTask" data-reveal class="button extra-small open-modal default" data-task-id="<?PHP echo $task->id; ?>" data-title="<?PHP echo $task->name; ?>"><i class='fa fa-trash-o'></i></a>
		</div>
	</div>
</div>