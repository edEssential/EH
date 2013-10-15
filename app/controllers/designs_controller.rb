class DesignsController < ApplicationController
  def new
    @design = Design.new
  end
        
  def create
    @design = Design.create(params[:design])
    respond_to do |format|
      format.html { redirect_to designs_path }
    end
  end

  def show
    respond_to do |format|
      format.html { redirect_to designs_path }
    end
  end
  
  def index
    
  end

  def edit
    @design = Design.find(params[:id])
  end

  def update   
    @design = Design.find(params[:id])
    if @design.update_attributes(params[:design])
      redirect_to :action => 'show', :id => @design
    else
      render :action => 'edit'
    end
  end
  
  
  def destroy
    @design = Show.find(params[:id])
    @design.destroy
    respond_to do |format|
      format.html { redirect_to designs_path }
    end
  end
end
