class BuildGallery
  @@artworks_shown = []
  def add_artwork(img_url)
    if @@artworks_shown.inlcude? "img_url"
      flash[:notice] = "Exhibit is already in your gallery!"
    else
      @artworks_shown.push("img_url")
      flash[:notice] = "Exhibit was added to your gallery!"
    end
  end
end
