$(document).ready(function(){
	
	$(".listings-show-lists").hide();








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


function SetNames(name) {
	$("#" + name).on("click", function(){
		event.preventDefault();
		$("#" + name + "-listings-show-pictures").show();
		$(".products").fadeOut();
	});

};

function SetLiSelector(li_id, name) {
	$("#listings-nav li:nth-child(" + li_id + ")").on("click", function(){
		$(".listings-show-lists").fadeOut();
		$("#" + name + "-listings-show-pictures").show();
		$(".products").fadeOut();

	});


};






});