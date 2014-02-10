class PhotosController < ApplicationController
  before_filter :authenticate_user! 
  
  def new
    @photo = Photo.new
  end
        
  def create
    @photo = Photo.create(params[:photo])
    respond_to do |format|
      format.html { redirect_to photos_path }
    end
  end

  def show
    @photo = Photo.find(params[:id])
  end
  
  def index
    @photos = Photo.all
  end

  def edit
    @photo = Photo.find(params[:id])
  end

  def update   
    @photo = Photo.find(params[:id])
    if @photo.update_attributes(params[:photo])
      redirect_to :action => 'index'
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to photos_path }
    end
  end
end
