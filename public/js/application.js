$(document).ready(function() {
	$('form').submit(function(event){
		event.preventDefault();

		var url = '/'
		var data = $('form').serialize();

		$.post(url,data,function(response){
			$('form').after(response);
		});
	});


});
