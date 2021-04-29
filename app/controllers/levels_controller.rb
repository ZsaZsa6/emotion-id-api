class LevelsController < ApplicationController
    def update
        # level completed
    end
    def create
        level = Level.create(level_params)
        render json: level
    end
    

    private
    def level_params
        params.require(:level).permit(:game_id, :level_number)
    end
   

end
