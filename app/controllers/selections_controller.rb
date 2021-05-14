class SelectionsController < ApplicationController
  before_action :set_selection, only: [:destroy]


##################################################################################################################
#
#   Bei der methode "adding" habe ich noch Probleme die 'strong parameters' über die selection_params zu übergeben
#
##################################################################################################################

  def adding
    @selection = Selection.new(exhibit_id: params[:id])
    #@selection = Selection.new(selection_params)
    if @selection.save
      flash[:notice] = "Exhibit was successfully added to your selection"
    else
      if @selection.errors.any?
        @selection.errors.full_messages.each do |msg|
        flash[:notice] = "#{msg}"
        end
      end
    end
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @selection.destroy
    flash[:notice] = "Exhibit was removed from your selection"
    redirect_to selections_path
  end

  def clear
    Selection.delete_all
    redirect_to selections_path
  end

  private
    #def selection_params
    #  params.permit(:exhibit_id)
    #end
    #def selection_params
    #  params.require(:selection).permit(:exhibit_id)
    #end

    def set_selection
      @selection = Selection.find(params[:id])
    end

end
