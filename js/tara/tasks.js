function updateTaskToBoard(taskID, board){
	console.log(board);
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
		console.log(data);
		console.log(e);
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
			var time = new Date().toTimeString();
			var less_time = "" + time.substring(0,8) + "";

			updateTaskToBoard(task_id, board);

			
			var experience = "";
			var exp = 0;
			if (board == "Done"){
				if (rand(2) == 0){
					exp = rand(15) + 10;
				}				
			}else if (rand(5) == 0){
				var exp = rand(6) + 2;
				
			}

			if (exp > 0){
				experience = ( "<span class='label green'>" + exp + " experience</span> gained.<br />" );
				log("received " + exp + " experience.");
				addExperience(exp);
			}

			$("#log-entries").prepend("<li><label>"+less_time+"</label></li><li class='log-info'>" + experience + "\'" + title + "\' moved to \'" + board + "\' board." + "</li>");
			log("moved task \'" + title + "\' to \'" + board + "\' board.");
		}
	});

$( "#toggleDesc" ).click(function() {
	$( ".desc" ).toggle("fast");
	$( this ).toggleClass( "disabled" );
});

$( "#toggleDeadline" ).click(function() {
	$( ".desc" ).toggle("fast");
	$( this ).toggleClass( "disabled" );
});

$( "#toggleTags" ).click(function() {
	toggleTags();
	$( this ).toggleClass( "disabled" );
});



$( ".tag-select" ).click(function() {
	$( this ).toggleClass( "selected" );
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