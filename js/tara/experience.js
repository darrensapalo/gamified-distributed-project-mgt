function addExperience (n, trigger) {
	$.post( "account/experience", {gained : n} )
	 .done( function( data ) {
			$( "#experience" ).animate({ 
				width: data
			}, 1700);
			if (trigger){
				trigger.effect('transfer', {to: "#experience" }, 1000);
				$("#exp-info").text("received (" + n + " XP)");
				$("#exp-info").fadeIn().delay(2500).fadeOut();
			}
				
		});
}

function updateAccount(){
	addExperience(0);	
}

updateAccount();