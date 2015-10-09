$(document).ready(function(){

	$("#gondolas-listings-show-pictures").hide();

	$("#gondolas").on("click", function(){
		event.preventDefault();
		$("#gondolas-listings-show-pictures").show();
		$(".products").fadeOut();


	})





})