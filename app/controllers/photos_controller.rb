class PhotosController < ApplicationController
    before_action :require_same_user, only: [:edit, :update, :destroy]
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

    def destroy
        @photo = Photo.find(params[:id])
        @album = @photo.album
        Cloudinary::Uploader.destroy(@photo.img.file.public_id)
        @photo.destroy
        flash[:danger] = "Image was successfully deleted"
        redirect_to  album_path(@album)
    end

    private
        def photo_params
            params.require(:photo).permit(:img, :album_id)
        end

          def require_same_user
            if current_user != @photo.album.user and !current_user.admin?
                flash[:danger] = "You can only delete your own photo"
                redirect_to album_path(@phto.album)
            end
        end
end