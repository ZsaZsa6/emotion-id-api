class GamesController < ApplicationController

    def index
        games = Game.all
        # byebug
        render json: games
       
    end

    def show
        game = Game.find_by_username(params[:username])
        render json: game
    end

    private
    def game_params
        params.require(:game).permit(:username)
    end

end
