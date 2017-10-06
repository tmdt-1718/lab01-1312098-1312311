class PhotosController < ApplicationController
    before_action :require_user
    def new 

    end

    def create 
        @photo = Photo.new(photo_params)
        @photo.num_views = 0
        @album = Album.find_by(id: params[:photo][:album_id])
        if @photo.save
           flash[:success] = 'Your photo was uploaded'
           redirect_to album_path(@album)
        else
            flash[:danger] = "Need image before uploaded"
            redirect_to album_path(@album)
        end
    end

    private
        def photo_params
            params.require(:photo).permit(:img, :album_id)
        end
end