var taskID_changeTags;

function updateTaskToBoard(taskID, board){
	if (board == "To-do"){
		board = -1;
	}else if (board == "Doing"){
		board = 0;
	}else if (board == "Done"){
		board = 1;
	}

	$.post("tasks/board", {
		task_id: taskID,
		board_id: board
	}).done(function(data, e) {
	});
}

$(function() {
	$(".options").hide();
	$('#deadline').datetimepicker();
	toggleTags();

	$( ".tasks" ).sortable({
		helper: "clone",
		placeholder: "ui-state-highlight .task-placeholder ",
		connectWith: ".tasks",
		distance: 50,
		stop: function(e, f) {
			var title = f.item.context.title;
			var task_id = f.item.context.dataset.taskId;
			var board = f.item.context.parentNode.title;
			

			updateTaskToBoard(task_id, board);

			
			var experience = "";
			var exp = 0;
			if (board == "Done"){
				if (rand(2) == 0){
					exp = rand(10) + 5;
				}				
			}else if (rand(5) == 0){
				var exp = rand(5) + 2;
				
			}

			if (exp > 0){
				experience = ( "received <span class='label green'>" + exp + " experience</span>" );
				log(experience);
				addExperience(exp, $( this ) );
			}
			log("moved task \'" + title + "\' to \'" + board + "\' board.");
		}
	});

$( "#toggleSize" ).click(function() {
	$( ".others" ).slideToggle();
	$( "#minimax" ).toggleClass( "fa-plus" );
	$( "#minimax" ).toggleClass( "fa-minus" );
	$( this ).toggleClass( "disabled" );
});

$( "#toggleDesc" ).click(function() {
	$( ".desc" ).slideToggle();
	$( "#descminimax" ).toggleClass( "fa-plus" );
	$( "#descminimax" ).toggleClass( "fa-minus" );
	$( this ).toggleClass( "disabled" );
});

$( "#archive" ).click(function() {
	$.post( "tasks/archive", function (data) {
		window.location.href = '/tara/tasks';
	});
});

$( "#toggleDeadline" ).click(function() {
	$( ".desc" ).toggle("fast");
	$( this ).toggleClass( "disabled" );
});

$( "#toggleTags" ).click(function() {
	toggleTags();
	$( this ).toggleClass( "disabled" );
});

$( ".select-tags" ).click(function() {
	var title = $( this ).data("title");
	$("#change-tag-task-name").text(title);
	taskID_changeTags = $( this ).data("task-id");
});


$( ".tag-select" ).click(function() {
	$( this ).toggleClass( "selected" );
});

$( "#assignTagsForm" ).submit(function() {
	event.preventDefault();

	// Get some values from elements on the page:
	var $form = $( this ),
	label = $form.find( "input[id='change-tag']" ),
	url = $form.attr( "action" );

	var chk = label.context;
	var tagsData = [chk[0].checked, chk[1].checked, chk[2].checked, chk[3].checked, chk[4].checked];
	
	// Send the data using post
	var posting = $.post( url, { tags: tagsData, id: taskID_changeTags } );

	// Put the results in a div
	posting.done(function( data , e) {
		updateTasks(taskID_changeTags);
	});
});

$( "#submitNewTask" ).submit(function() {
	event.preventDefault();

	// Get some values from elements on the page:
	var $form = $( this ),
	taskName = $form.find( "input[name='name']" )[0].value,
	taskDesc = $form.find( "textarea[name='desc']" )[0].value,
	deadlineDate = $form.find( "input[name='deadline']" )[0].value,
	label = $form.find( "input[type='checkbox']" ),
	url = $form.attr( "action" );

	var chk = label;
	var tagsData = [chk[0].checked, chk[1].checked, chk[2].checked, chk[3].checked, chk[4].checked];
	
	// Send the data using post
	var posting = $.post( url, { tags: tagsData, name: taskName, desc: taskDesc, deadline: deadlineDate } );

	// Put the results in a div
	posting.done(function( data , e) {
		$('#newTask').foundation('reveal', 'close');
	});
});


$( ".task" ).dblclick(function() {
	$( this ).children( "div[class='options']" ).toggle("fast");
});

$('.task-input').editable({
	type: 'text',
	url: 'tasks/edit'
});

});

function toggleTags(){
	$( ".task-label" ).each(function(index) {
		var currentText = $( this ).text();
		if (currentText != ""){
			$( this ).data("text", $( this ).text());
			$( this ).text("");
		}else{
			$( this ).text($( this ).data("text"));
		}
	});
}

function updateTasks(id){
	window.location.href = "http://localhost/tara/tasks";
}

// function to remove all tasks and upate the whole board
function updateBoard(){

}