class ApplicationController < ActionController::Base
  #@@artworks = []

  #def read_personal_gallery
  #  @artworks = @@artworks_to_display
#  end

  def add_to_personal_gallery
    @@artworks_to_display.push(params[:id])
  end

  def adding(exID)
    @selection = Selection.new(exhibitID: exID)
    if @selection.save
      flash[:notice] = "Exhibit was successfully added to your selection"
    end
  end


end
