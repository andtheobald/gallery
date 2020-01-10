class PgallerysController < ApplicationController
  before_action :set_exhibit, only: [:edit, :update, :show, :destroy]



  def index
    @pgallery = Pgallery.all
  end

  def new
    @pgallery = Pgallery.new
  end

  def show
  end

  def create
    @pgallery = Pgallery.new(pgallery_params)
    if @pgallery.save
      flash[:notice] = "Exhibit was successfully added"
      redirect_to new_exhibit_path
    else
      render 'new'
    end
  end

  def update
    if @pgallery.update(pgallery_params)
      flash[:notice] = "Exhibit was successfully updated"
      redirect_to exhibits_path
    end
  end

  def destroy
    @pgallery.destroy
    flash[:notice] = "Exhibit was successfully deleted"
    redirect_to exhibits_path
  end

  private
    def pgallery_params
      params.require(:pgallery).permit(:img_url, :artwork_name, :artist_name, :information)
    end

    def set_pgallery
      @pgallery = Pgallery.find(params[:id])
    end

end
