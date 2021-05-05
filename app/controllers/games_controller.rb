class GamesController < ApplicationController

    def index
        games = Game.all
        render json: games,
         include: 
        [challenges: {only: [:game_id, :level_number, :id]}]
    end

    def show
        game = Game.find_by_username(params[:username])
        render json: game, include:
        [:challenges]
    end

    private
    def game_params
        params.require(:game).permit(:username)
    end

end
