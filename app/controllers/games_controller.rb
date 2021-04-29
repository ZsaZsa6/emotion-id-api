class GamesController < ApplicationController

    def index
        games = Game.all
        render json: games
        #  include: 
        # [levels: {only: [:game_id, :level_number, :id]}]
    end

    def show
        game = Game.find(params[:id])
        render json: game, include:
        [:levels]
    end

    private
    def game_params
        params.require(:game).permit(:username)
    end

end
