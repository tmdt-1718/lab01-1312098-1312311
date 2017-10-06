class PhotosController < ApplicationController
    before_action :require_user
    def new 

    end

    def create 
        @photo = Photo.new(photo_params)
        @photo.num_views = 0
        @album = Album.find_by(id: params[:photo][:album_id])
        if @photo.save
            respond_to do |format|
                format.html { redirect_to article_path(@album), success: 'Your photo was upload' }
                format.js   { }
                format.json { render :show, status: :created, location: @photo }
            end
        else
            render @album
        end
    end

    private
        def photo_params
            params.require(:photo).permit(:img, :album_id)
        end
end