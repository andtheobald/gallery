class GalleryController < ApplicationController
  #@artworks = [2]

  def start
    @artworks = [1,2,3,1]
#    read_personal_gallery
  end

  def example
  end

  def set_artwork
    @exhibit = Exhibit.find(2)
  end

  def add
    @artworks.push(params[:id])
  end

  #def add_to_personal_gallery
  #  @artworks_to_display = [1,2,3] #.push(params[:id])
  #end

end
