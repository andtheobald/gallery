class ApplicationController < ActionController::Base
  require "build_gallery"
  my_gallery = BuildGallery.New

end
