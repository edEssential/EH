class ReleasesController < ApplicationController
  
  def new
    @release = Release.new
  end
  
  def create
    @release = Release.create(params[:release])
    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end
  
  def edit
    @release = Release.find(params[:id])
  end

  def update    
    @release = Release.find(params[:id])
    if @release.update_attributes(params[:release])
      respond_to do |format|
       format.html { redirect_to release_path }
      end
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @release = Release.find(params[:id])
    @release.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end
  
  def show
    @release = Release.find(params[:id])
  end
  
  def index
    @release = Release.find(params[:id])
  end
  
end
