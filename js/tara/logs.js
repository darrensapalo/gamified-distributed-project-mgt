function log (action) {
	$.post("log/add", {description: action})
	 .done(function(data, e) {
	});
}