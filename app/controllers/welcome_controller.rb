class WelcomeController < ApplicationController


	  respond_to :html, :js

  def index
  	@listings = Listing.all



  	# LIVE DB
		
		# @listings_gondolas = Listing.where(:section => "Gondola and Accessories")
		# @listings_gondolas_pictures = Listing.find_by(:id => 1)
		# @gondolas_pictures = @listings_gondolas_pictures.pictures.order(description: :asc)


		# @listings_mannequins = Listing.where(:section => "Mannequin")
		# @listings_mannequins_pictures = Listing.find_by(:id => 2)
		# @mannequins_pictures = @listings_mannequins_pictures.pictures.order(description: :asc)
		

		# @listings_pharmacy_displays = Listing.where(:section => "Pharmacy Display")
		# @listings_pharmacy_displays_pictures = Listing.find_by(:id => 4)
		# @pharmacy_displays_pictures = @listings_pharmacy_displays_pictures.pictures.order(description: :asc)
		

		# @listings_security_mirrors = Listing.where(:section => "Security Mirror")
		# @listings_security_mirrors_pictures = Listing.find_by(:id => 5)
		# @security_mirrors_pictures = @listings_security_mirrors_pictures.pictures.order(description: :asc)
		

		# @listings_shopping_carts_and_baskets = Listing.where(:section => "Shopping Carts and Baskets")
		# @listings_shopping_carts_and_baskets_pictures = Listing.find_by(:id => 6)
		# @shopping_carts_and_baskets_pictures = @listings_shopping_carts_and_baskets_pictures.pictures.order(description: :asc)
		

		
		# @listings_showcases = Listing.where(:section => "Showcase")
		# @listings_showcases_pictures = Listing.find_by(:id => 7)
		# @showcases_pictures = @listings_showcases_pictures.pictures.order(description: :asc)
		

		
		# @listings_slatwall_and_accessories = Listing.where(:section => "Slatwall and Accessories")
		# @listings_slatwall_and_accessories_pictures = Listing.find_by(:id => 8)
		# @slatwall_and_accessories_pictures = @listings_slatwall_and_accessories_pictures.pictures.order(description: :asc)
		
		# @listings_tags_and_guns = Listing.where(:section => "Tags and Guns")
		# @listings_tags_and_guns_pictures = Listing.find_by(:id => 14)
		# @tags_and_guns_pictures = @listings_tags_and_guns_pictures.pictures.order(description: :asc)
		
		# @listings_wire_baskets = Listing.where(:section => "Wire Basket")
		# @listings_wire_baskets_pictures = Listing.find_by(:id => 10)
		# @wire_baskets_pictures = @listings_wire_baskets_pictures.pictures.order(description: :asc)
		
		# @listings_racks = Listing.where(:section => "Racks")
		# @listings_racks_pictures = Listing.find_by(:id => 11)
		# @racks_pictures = @listings_racks_pictures.pictures.order(description: :asc)
		

		# @listings_hangers = Listing.where(:section => "Hangers")
		# @listings_hangers_pictures = Listing.find_by(:id => 12)
		# @hangers_pictures = @listings_hangers_pictures.pictures.order(description: :asc)
		
		# @listings_gridwall = Listing.where(:section => "Gridwall")
		# @listings_gridwall_pictures = Listing.find_by(:id => 13)
		# @gridwall_pictures = @listings_gridwall_pictures.pictures.order(description: :asc)


		# LOCAL DB


		@listings_gondolas = Listing.where(:section => "Gondola and Accessories")
		@listings_gondolas_pictures = Listing.find_by(:id => 34)
		@gondolas_pictures = @listings_gondolas_pictures.pictures.order(description: :asc)



		@listings_mannequins = Listing.where(:section => "Mannequin")
		@listings_mannequins_pictures = Listing.find_by(:id => 19)
		@mannequins_pictures = @listings_mannequins_pictures.pictures.order(description: :asc)
		

		@listings_pharmacy_displays = Listing.where(:section => "Pharmacy Display")
		@listings_pharmacy_displays_pictures = Listing.find_by(:id => 22)
		@pharmacy_displays_pictures = @listings_pharmacy_displays_pictures.pictures.order(description: :asc)
		

		@listings_security_mirrors = Listing.where(:section => "Security Mirror")
		@listings_security_mirrors_pictures = Listing.find_by(:id => 23)
		@security_mirrors_pictures = @listings_security_mirrors_pictures.pictures.order(description: :asc)
		

		@listings_shopping_carts_and_baskets = Listing.where(:section => "Shopping Carts and Baskets")
		@listings_shopping_carts_and_baskets_pictures = Listing.find_by(:id => 24)
		@shopping_carts_and_baskets_pictures = @listings_shopping_carts_and_baskets_pictures.pictures.order(description: :asc)
		

		
		@listings_showcases = Listing.where(:section => "Showcase")
		@listings_showcases_pictures = Listing.find_by(:id => 25)
		@showcases_pictures = @listings_showcases_pictures.pictures.order(description: :asc)
		

		
		@listings_slatwall_and_accessories = Listing.where(:section => "Slatwall and Accessories")
		@listings_slatwall_and_accessories_pictures = Listing.find_by(:id => 26)
		@slatwall_and_accessories_pictures = @listings_slatwall_and_accessories_pictures.pictures.order(description: :asc)
		
		@listings_tags_and_guns = Listing.where(:section => "Tags and Guns")
		@listings_tags_and_guns_pictures = Listing.find_by(:id => 30)
		@tags_and_guns_pictures = @listings_tags_and_guns_pictures.pictures.order(description: :asc)
		
		@listings_wire_baskets = Listing.where(:section => "Wire Basket")
		@listings_wire_baskets_pictures = Listing.find_by(:id => 27)
		@wire_baskets_pictures = @listings_wire_baskets_pictures.pictures.order(description: :asc)
		
		@listings_racks = Listing.where(:section => "Racks")
		@listings_racks_pictures = Listing.find_by(:id => 35)
		@racks_pictures = @listings_racks_pictures.pictures.order(description: :asc)
		

		@listings_hangers = Listing.where(:section => "Hangers")
		@listings_hangers_pictures = Listing.find_by(:id => 29)
		@hangers_pictures = @listings_hangers_pictures.pictures.order(description: :asc)
		
		@listings_gridwall = Listing.where(:section => "Gridwall")
		@listings_gridwall_pictures = Listing.find_by(:id => 17)
		@gridwall_pictures = @listings_gridwall_pictures.pictures.order(description: :asc)
	
	
	

	 respond_to do |format|
    format.html
    format.json
  	end

  end

	def new
	@listing = Listing.new

	 respond_to do |format|
	    format.html
	    format.json
	  end

	end



	def create
		@listing = Listing.new(listing_params)

		respond_to do |format|
			if @listing.save
				if params[:images]
					params[:images].each {|image|
						@listing.pictures.create(image: image)
					}

				end

		format.html { redirect_to @listing, notice: 'listing was successfully created.' }
      format.json { render json: @listing, status: :created, location: @listing }
    else
      format.html { render action: "new" }
      format.json { render json: @listing.errors, status: :unprocessable_entity }
    end

     respond_to do |format|
    format.html
    format.json
  	end
  end

  def edit
  	@listing = Listing.find(params[:id])
  	@picture = Picture.find(params[:id])

  end

  def update
      @picture = Picture.find(params[:id])

  end

end



end
