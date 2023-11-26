class PhotosController < ApplicationController
  def index
    matching_photos = Photo.all
    #ordering: newest first
    @list_of_photos = matching_photos.order({ "created_at" => :desc})
    render({:template => "photo_templates/index"})
  end
end
