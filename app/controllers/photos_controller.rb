class PhotosController < ApplicationController
	def new
		@listing = Listing.find(params[:listing_id])
	  @photo = Photo.new
	end
	def create
		@listing = Listing.find(params[:listing_id])
	  @listing.photos.push( Photo.new(params.require(:photo).permit(:photo)) )
	  if @listing.save
	  	redirect_to listing_path(@listing)
	  end
	end
end