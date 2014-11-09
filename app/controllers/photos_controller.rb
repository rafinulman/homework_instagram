class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
  	@photo_id = params[:id]
  	@photo_source = Photo.find(params[:id]).source
  	@photo_caption = Photo.find(params[:id]).caption
  end

  def new_form
  end

  def new_row
  	@photo = Photo.new
  	@photo.caption = params[:the_caption]
  	@photo.source = params[:the_source]
  	
  	@photo.save

  	@photo_id = @photo.id
  	@photo_caption = params[:the_caption]
  	@photo_source = params[:the_source]

  	render "show"
  end

  def destroy
  	@photo = Photo.find(params[:id])
  	@photo.destroy

  	@list_of_photos = Photo.all

  	render "index"

  end

  def edit_form
  	@photo_id = params[:id]
  	@photo_source = Photo.find(params[:id]).source
  	@photo_caption = Photo.find(params[:id]).caption
  end

  def update
  	@photo = Photo.find(params[:id])

  	@photo.caption = params[:the_caption]
  	@photo.source = params[:the_source]
  	
  	@photo.save

  	@photo_id = @photo.id
  	@photo_caption = params[:the_caption]
  	@photo_source = params[:the_source]

  	render "show"

  end

end
