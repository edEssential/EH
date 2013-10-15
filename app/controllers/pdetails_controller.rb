class PdetailsController < ApplicationController
    def new
      @pdetail = Pdetail.new
      @options = Photo.find(:all).collect { |s| [s.setname, s.id] }
    end

    def create
      @pdetail = Pdetail.create(params[:pdetail])
      respond_to do |format|
        format.html { redirect_to photos_path }
      end
    end

    def show
      @pdetail = Pdetail.find(params[:id])
    end

    def index
      @pdetail = Pdetail.all
    end

    def edit
      @pdetail = Pdetail.find(params[:id])
      @options = Photo.find(:all).collect { |s| [s.setname, s.id] }
    end

    def update   
      @pdetail = Pdetail.find(params[:id])
      if @pdetail.update_attributes(params[:pdetail])
        redirect_to photos_path
      else
        render :action => 'edit'
      end
    end

    def destroy
      @pdetail = Pdetail.find(params[:id])
      @pdetail.destroy
      respond_to do |format|
        format.html { redirect_to photos_path }
      end
    end

end
