class SongbracketsController < ApplicationController
    
       
    def show
        @songbracket = Songbracket.find(params[:id])
        render json: @songbracket
    end
    
    def index
        @songbrackets = Songbracket.all
        render json: @songbrackets
    end
    
    def new
        @songbracket = Songbracket.new
    end
    
    def edit
        @songbracket = Songbracket.find(params[:id])
    end
    
    def update
        @songbracket = Songbracket.find(params[:id])
        @songbracket.update(songbracket_params)
    end
    
    def create 
        @songbracket = Songbracket.create(songbracket_params)
        render json: @songbracket
    end 

    def destroy 
        @songbracket = Songbracket.find(params[:id])
        @songbracket.destroy  
    end

    private
    
    def songbracket_params
        params.require(:songbracket).permit(:id, :song_id, :bracket_id)
    end
end