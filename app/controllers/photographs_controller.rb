class PhotographsController < ApplicationController
  
  def new
    @photograph = Photograph.new
  end
        
  def create
    @photograph = Photograph.create(params[:photograph])
    respond_to do |format|
      format.html { redirect_to photographs_path }
    end
  end
  
  def index
    @photograph = Photograph.all
  end

  def edit
    @photograph = Photograph.find(params[:id])
  end

  def update   
    @photograph = Photograph.find(params[:id])
    if @photograph.update_attributes(params[:photograph])
      redirect_to :action => 'index'
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @photograph = Photograph.find(params[:id])
    @photograph.destroy
    respond_to do |format|
      format.html { redirect_to photographs_path }
    end
  end
  
end
