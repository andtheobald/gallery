class ApplicationController < ActionController::Base
  @@artworks_to_display = []

  def read_personal_gallery
    @artworks = @@artworks_to_display
  end

  def add_to_personal_gallery
    @@artworks_to_display.push(params[:id])
  end


end
