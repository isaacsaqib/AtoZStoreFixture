class ListingsController < ApplicationController
	skip_before_filter  :verify_authenticity_token
	def index

		@listings = Listing.all

		@listings_gondolas = Listing.where(:section => "Gondola and Accessories")
		@listings_mannequins = Listing.where(:section => "Mannequin")
		@listings_pharmacy_displays = Listing.where(:section => "Pharmacy Display")
		@listings_security_mirrors = Listing.where(:section => "Security Mirror")
		@listings_shopping_carts_and_baskets = Listing.where(:section => "Shopping Carts and Baskets")
		@listings_showcases = Listing.where(:section => "Showcase")
		@listings_slatwall_and_accessories = Listing.where(:section => "Slatwall and Accessories")
		@listings_tags_and_guns = Listing.where(:section => "Tags and Guns")
		@listings_wire_baskets = Listing.where(:section => "Wire Basket")
		

		@listing = Listing.find_by(params[:id])

	end


	def new
		@listing = Listing.new
		respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @listing }
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
  end
end

	

	def show

	  	@listing = Listing.find(params[:id])
	  	# @listings_security_mirrors = Listing.where(:section => "Security Mirror")
	  	# @security_mirror_pictures = @listings_security_mirrors.pictures
    	
    	@pictures = @listing.pictures

    	respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @listing }
    end
	end

	def edit 
		@listing = Listing.find(params[:id])
	end


	def update
		 @listing = Listing.find(params[:id])
    	if @listing.update(listing_params)
   		 redirect_to @listing
  		else
    	render 'edit'
  		end
	end


	def destroy
		@listing = Listing.find(params[:id])
		@listing.destroy


	end



	private

	def listing_params
		params.require(:listing).permit(:name, :images, :size, :pictures, :description, :section)

	end
end
	



