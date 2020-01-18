class ExhibitsController < ApplicationController
  before_action :set_exhibit, only: [:edit, :update, :show, :destroy, :add_to_gallery]


  def index
    @exhibits = Exhibit.all
  end

  def new
    @exhibit = Exhibit.new
  end

  def show
  end

  def create
    @exhibit = Exhibit.new(exhibit_params)
    if @exhibit.save
      flash[:notice] = "Exhibit was successfully added"
      redirect_to new_exhibit_path
    else
      render 'new'
    end
  end

  def update
    if @exhibit.update(exhibit_params)
      flash[:notice] = "Exhibit was successfully updated"
      redirect_to exhibits_path
    end
  end

  def destroy
    @exhibit.destroy
    flash[:notice] = "Exhibit was successfully deleted"
    redirect_to exhibits_path
  end

  def edit
  end

  def add_to_gallery
    addgallery(params[:id])

    redirect_to exhibits_path

  end


  private
    def exhibit_params
      params.require(:exhibit).permit(:img_url, :artwork_name, :artist_name, :information)
    end

    def set_exhibit
      @exhibit = Exhibit.find(params[:id])
    end

end
