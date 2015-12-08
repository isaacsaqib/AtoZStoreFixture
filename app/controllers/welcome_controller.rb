class WelcomeController < ApplicationController
	
  def index
  	@listings = Listing.all



		@listings_gondolas = Listing.where(:section => "Gondola and Accessories")
		@listings_gondolas_pictures = Listing.find_by(:id => 18)
		@gondolas_pictures = @listings_gondolas_pictures.pictures


		@listings_mannequins = Listing.where(:section => "Mannequin")
		@listings_mannequins_pictures = Listing.find_by(:id => 19)
		@mannequins_pictures = @listings_mannequins_pictures.pictures
		

		@listings_pharmacy_displays = Listing.where(:section => "Pharmacy Display")
		@listings_pharmacy_displays_pictures = Listing.find_by(:id => 22)
		@pharmacy_displays_pictures = @listings_pharmacy_displays_pictures.pictures
		

		@listings_security_mirrors = Listing.where(:section => "Security Mirror")
		@listings_security_mirrors_pictures = Listing.find_by(:id => 23)
		@security_mirrors_pictures = @listings_security_mirrors_pictures.pictures
		

		@listings_shopping_carts_and_baskets = Listing.where(:section => "Shopping Carts and Baskets")
		@listings_shopping_carts_and_baskets_pictures = Listing.find_by(:id => 24)
		@shopping_carts_and_baskets_pictures = @listings_shopping_carts_and_baskets_pictures.pictures
		

		
		@listings_showcases = Listing.where(:section => "Showcase")
		@listings_showcases_pictures = Listing.find_by(:id => 26)
		@showcases_pictures = @listings_showcases_pictures.pictures
		

		
		@listings_slatwall_and_accessories = Listing.where(:section => "Slatwall and Accessories")
		@listings_slatwall_and_accessories_pictures = Listing.find_by(:id => 27)
		@slatwall_and_accessories_pictures = @listings_slatwall_and_accessories_pictures.pictures
		
		@listings_tags_and_guns = Listing.where(:section => "Tags and Guns")
		@listings_tags_and_guns_pictures = Listing.find_by(:id => 30)
		@tags_and_guns_pictures = @listings_tags_and_guns_pictures.pictures
		
		@listings_wire_baskets = Listing.where(:section => "Wire Basket")
		@listings_wire_baskets_pictures = Listing.find_by(:id => 27)
		@wire_baskets_pictures = @listings_wire_baskets_pictures.pictures
		
		@listings_racks = Listing.where(:section => "Racks")
		@listings_racks_pictures = Listing.find_by(:id => 28)
		@racks_pictures = @listings_racks_pictures.pictures
		

		@listings_hangers = Listing.where(:section => "Hangers")
		@listings_hangers_pictures = Listing.find_by(:id => 29)
		@hangers_pictures = @listings_hangers_pictures.pictures
		
		@listings_gridwall = Listing.where(:section => "Gridwall")
		@listings_gridwall_pictures = Listing.find_by(:id => 17)
		@gridwall_pictures = @listings_gridwall_pictures.pictures
	
  end

end
