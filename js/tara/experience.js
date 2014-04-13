function addExperience (n) {
	$.post( "account/experience", {gained : n} ).done( 
		function( data ) {
			console.log(data);
			$( "#experience" ).animate({ 
				width: data
			}, 1700);
		});
}

function updateAccount(){
	addExperience(0);	
}

updateAccount();