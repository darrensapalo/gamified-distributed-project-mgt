var user_id;
function getUsername(){
	user_id = readCookie('user_id');
	if (user_id == "")
	{
		$.post("account/username")
		.done(function(data, e){
			user_id = data;
			writeCookie('user_id', data, 1);
		});
	}
	return user_id;
}

function log (action) {
	$.post("log/add", {description: action})
	.done(function(data, e) {

		var time = new Date().toTimeString();
		var less_time = "" + time.substring(0,8) + "";

		$("#log-entries").prepend("<li><label>"+less_time+"</label></li><li class='log-info'>" + getUsername() + " " + action + "</li>");
	});
}