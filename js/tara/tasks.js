$(function() {
	$(".options").hide();

	$( ".tasks" ).sortable({
		helper: "clone",
		placeholder: "ui-state-highlight .task-placeholder ",
		connectWith: ".tasks",
		distance: 50,
		stop: function(e, f) {
			var title = f.item.context.title;
			var board = f.item.context.parentNode.title;
			var time = new Date().toTimeString();
			var less_time = "<h4>" + time.substring(0,8) + "</h4>";
			
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
				addExperience(exp);
			}
			$("#log").html( less_time + experience + "Task \'" + title + "\' to the \'" + board + "\' board.").wrap("<p id='log'></p>");


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
		$( ".task-label" ).each(function(index) {
			var currentText = $( this ).text();
			if (currentText != ""){
				$( this ).data("text", $( this ).text());
				$( this ).text("");
			}else{
				$( this ).text($( this ).data("text"));
			}
		});
		$( this ).toggleClass( "disabled" );
	});

	$( ".tag-select" ).click(function() {
		$( this ).toggleClass( "selected" );
	});

	$( ".task" ).dblclick(function() {
		$( this ).children( "div[class='options']" ).toggle("fast");
	});

	$('.task-input').editable({
		url: '/task/edit'
	});
});