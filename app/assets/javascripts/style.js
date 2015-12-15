$(document).ready(function(){
	$("#listings-index-table").hide();
	$("#listings-nav").hide();
	$("#ajax-success").hide();

	// $(".container").hide();
	// $("#front-table").hide();
	// $("#gondolas-listings-show-pictures").show();





function HideLists(name) {
	$("#" + name + "-listings-show-pictures").hide();

}

// for click on listing to show its products.

function SetNames(name) {
	$("#" + name).on("click", function(){
		event.preventDefault();
		$("#" + name + "-listings-show-pictures").show();
		$(".products").fadeOut();
		$('body').css('background-image', 'none').css('background-color', 'white');
	});

};

// for top nav--changing sections

function SetLiSelector(li_id, name) { 
	$("#listings-nav li:nth-child(" + li_id + ")").on("click", function(){
		$(".listings-show-lists").fadeOut();
		$("#" + name + "-listings-show-pictures").show();
		$(".products").fadeOut();
		$('body').css('background-image', 'none').css('background-color', 'white');

	});


};

;

	HideLists('gondolas');
	HideLists('mannequins');
	HideLists('pharmacy_displays');
	HideLists('security_mirrors');
	HideLists('shopping_carts_and_baskets');
	HideLists('showcases');
	HideLists('slatwall_and_accessories');
	HideLists('tags_and_guns');
	HideLists('wire_baskets');
	HideLists('racks');
	HideLists('hangers');
	HideLists('gridwall');





	SetNames('gondolas');
	SetNames('mannequins');
	SetNames('pharmacy_displays');
	SetNames('security_mirrors');
	SetNames('shopping_carts_and_baskets');
	SetNames('showcases');
	SetNames('slatwall_and_accessories');
	SetNames('tags_and_guns');
	SetNames('wire_baskets');
	SetNames('racks');
	SetNames('hangers');
	SetNames('gridwall');


	SetLiSelector(1, 'gondolas');
	SetLiSelector(2, 'mannequins');
	SetLiSelector(3, 'pharmacy_displays');
	SetLiSelector(4, 'security_mirrors');
	SetLiSelector(5, 'shopping_carts_and_baskets');
	SetLiSelector(6, 'showcases');
	SetLiSelector(7, 'slatwall_and_accessories');
	SetLiSelector(8, 'tags_and_guns');
	SetLiSelector(9, 'wire_baskets');
	SetLiSelector(10, 'racks');
	SetLiSelector(11, 'hangers');
	SetLiSelector(12, 'gridwall');


	$("#explore-button").on("click", function(){
		event.preventDefault();
		$(".container").fadeOut();
		$("#front-table").fadeOut();
		$("#listings-index-table").fadeIn();
		$("#listings-nav").fadeIn();
		$('body').css('background-image', 'none').css('background-color', 'white');




	});

	$('.edit-form').on('ajax:success', function() {
  		$(this).append("<p>Thank you</p>")



	});


});

