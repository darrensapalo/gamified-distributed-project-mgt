function log (action) {
	$.post("log/add", {description: action})
	 .done(function(data, e) {
	 	console.log(data);
	 	console.log(e);
	});
}