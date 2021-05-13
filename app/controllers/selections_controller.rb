class SelectionsController < ApplicationController
  before_action :set_selection, only: [:show, :destroy]


  def index
    @selections = Selection.all
  end

  def adding
    @selection = Selection.new(exhibit_id: params[:id])
    if @selection.save
      flash[:notice] = "Exhibit was successfully added to your selection"
    end
    redirect_back(fallback_location: root_path)
  end

  def new
    @selection = Selection.new(params[:id])
    if @selection.save
      flash[:notice] = "Exhibit was successfully added to your selection"
    end
    #render 'app/views/exhibits'
  end
  def create
    @selection = Selection.new(exhibit_id)
    if @selection.save
      flash[:notice] = "Exhibit was successfully added to your selection"
    else
      render 'new'
    end
  end

  def show
  end

  def destroy
    @selection.destroy
    flash[:notice] = "Exhibit was removed from your selection"
    redirect_to selections_path
  end

    def selection_params
      params.permit(:exhibit_id)
    end
    #def selection_params
    #  params.require(:selection).permit(:exhibitID)
    #end

    def set_selection
      @selection = Selection.find(params[:id])
    end

end
