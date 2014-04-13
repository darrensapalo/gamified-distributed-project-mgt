$(function() {
	$(".options").hide();

	$( ".tasks" ).sortable({
		helper: "clone",
		placeholder: "ui-state-highlight .task-placeholder ",
		connectWith: ".tasks",
		distance: 50,
		stop: function(e, f) {
			var title = f.item.context.title;
			var time = new Date().toTimeString();
			var less_time = time.substring(0,8);
			var experience = "";
			if (rand(5) < 4){
				var exp = rand(15) + 5;
				experience = ( "You gained " + exp + " experience. " );
				addExperience(exp);
			}
			$("#log").text( less_time + " - " + experience + "Task \'" + title + "\' dropped. ");


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
		$( ".label:not(.tag-select)" ).each(function(index) {
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