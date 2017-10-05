class AlbumsController < ApplicationController
    before_action :set_album, only: [:edit, :update, :show, :destroy]

    def index 
        
    end
    
    def new
        @album = Album.new
    end

    def create 
        @album = Album.new(album_params)
        @album.user = current_user
        if @album.save
            flash[:success] = "Article was successfully create"
            redirect_to album_path(@album)
        else 
            render 'new'
        end
    end

    def show

    end

    def edit
    end

    def update
        if @album.update(album_params)
            flash[:success] = "Album was successfully update"
            redirect_to album_path(@album)
        else
            render 'edit'
        end
    end

    def destroy

    end

    private
        def set_album
            @album = Album.find(params[:id])
        end

        def album_params
            params.require(:album).permit(:name, :description, :user_id)
        end
end
