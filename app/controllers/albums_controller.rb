class AlbumsController < ApplicationController
    

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
            redirect_to albums_path
        else 
            render 'new'
        end
    end

    def show

    end

    def edit

    end

    def update

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
