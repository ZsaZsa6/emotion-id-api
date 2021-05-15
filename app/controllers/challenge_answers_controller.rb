class ChallengeAnswersController < ApplicationController
    

    def create
        game = Game.find_by_username(params[:game_username])
        challenge_answer = game.challenge_answers.build(challenge_answer_params)
        challenge_answer.save
        
        render json: challenge_answer 
    end
    def show
        challenge_answer = ChallengeAnswer.find(params[:id])
        render json: challenge_answer
    end

    private 
    def challenge_answer_params
        params.require(:challenge_answer).permit(:face_id, :challenge_id)
    end
end
