class GamesController < ApplicationController

    def index
        games = Game.all
        render json: games 
    end

    def create        
        game = Game.create(game_params)       
    end

    def show
        game = Game.find(params[:id])
    end

    private
    def game_params
        params.require(:game).permit(:username)
    end

end
