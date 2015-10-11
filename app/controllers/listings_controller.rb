class ListingsController < ApplicationController
	skip_before_filter  :verify_authenticity_token
	def index

		@listings = Listing.all

		@listings_gondolas = Listing.where(:section => "Gondola and Accessories")
		@listings_gondolas_pictures = Listing.find_by(:id => 1)
		@gondolas_pictures = @listings_gondolas_pictures.pictures


		@listings_mannequins = Listing.where(:section => "Mannequin")
		@listings_mannequins_pictures = Listing.find_by(:id => 2)
		@mannequins_pictures = @listings_mannequins_pictures.pictures
		

		@listings_pharmacy_displays = Listing.where(:section => "Pharmacy Display")
		@listings_pharmacy_displays_pictures = Listing.find_by(:id => 4)
		@pharmacy_displays_pictures = @listings_pharmacy_displays_pictures.pictures
		

		@listings_security_mirrors = Listing.where(:section => "Security Mirror")
		@listings_security_mirrors_pictures = Listing.find_by(:id => 5)
		@security_mirrors_pictures = @listings_security_mirrors_pictures.pictures
		

		@listings_shopping_carts_and_baskets = Listing.where(:section => "Shopping Carts and Baskets")
		@listings_shopping_carts_and_baskets_pictures = Listing.find_by(:id => 6)
		@shopping_carts_and_baskets_pictures = @listings_shopping_carts_and_baskets_pictures.pictures
		

		
		@listings_showcases = Listing.where(:section => "Showcase")
		@listings_showcases_pictures = Listing.find_by(:id => 7)
		@showcases_pictures = @listings_showcases_pictures.pictures
		

		
		@listings_slatwall_and_accessories = Listing.where(:section => "Slatwall and Accessories")
		@listings_slatwall_and_accessories_pictures = Listing.find_by(:id => 8)
		@slatwall_and_accessories_pictures = @listings_slatwall_and_accessories_pictures.pictures
		
		@listings_tags_and_guns = Listing.where(:section => "Tags and Guns")
		@listings_tags_and_guns_pictures = Listing.find_by(:id => 14)
		@tags_and_guns_pictures = @listings_tags_and_guns_pictures.pictures
		
		@listings_wire_baskets = Listing.where(:section => "Wire Basket")
		@listings_wire_baskets_pictures = Listing.find_by(:id => 10)
		@wire_baskets_pictures = @listings_wire_baskets_pictures.pictures
		
		@listings_racks = Listing.where(:section => "Racks")
		@listings_racks_pictures = Listing.find_by(:id => 11)
		@racks_pictures = @listings_racks_pictures.pictures
		

		@listings_hangers = Listing.where(:section => "Hangers")
		@listings_hangers_pictures = Listing.find_by(:id => 12)
		@hangers_pictures = @listings_hangers_pictures.pictures
		
		@listings_gridwall = Listing.where(:section => "Gridwall")
		@listings_gridwall_pictures = Listing.find_by(:id => 13)
		@gridwall_pictures = @listings_gridwall_pictures.pictures
	
	end

	# def set_names(name, id)

	# 	puts "@listings" + name + "=" + name + ".where(:section =>" + name + ")"

	# 	puts "@listings" + name + "_pictures" + "=" + name.capitalize + "find_by(:id =>" + id.to_s + ")"

	# 	puts "@" + name + "_pictures" + "= @listings_" + name + "_pictures.pictures"
	
	# end

	# def say_hello (name)
	# 	puts "Hello, " + name

	# end



	def new
		@listing = Listing.new

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
  end
end

	

	def show

	  	@listing = Listing.find(params[:id])

	  	@picture = Picture.find(params[:id])
    	
    	@pictures = @listing.pictures
	end

	def edit 
		@listing = Listing.find(params[:id])
	end


	 def update
    @listing = Listing.find(params[:id])

    respond_to do |format|
      if @listing.update_attributes(listing_params)
        if params[:images]
          # The magic is here ;)
          params[:images].each { |image|
            @listing.pictures.create(image: image)
          }
        end
        format.html { redirect_to @listing, notice: 'listing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end


	def destroy
		@listing = Listing.find(params[:id])
		@listing.destroy
		if @listing.destroy
			redirect_to @listing 
		else
			render :edit
		end
	end



	private

	def listing_params
		params.require(:listing).permit(:name, :images, :size, :pictures, :description, :section)

	end
end
	



