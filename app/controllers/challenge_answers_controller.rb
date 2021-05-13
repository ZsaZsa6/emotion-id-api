class ChallengeAnswersController < ApplicationController
    

    def create
        challenge_answer = ChallengeAnswer.create(challenge_answer_params)
        if face_id == challenge.correct_answer_number : correct = true || correct = false
        # render json: challenge_answer
    end
    def show
        challenge_answer = ChallengeAnswer.find(params[:id])
        render json: challenge_answer
    end

    private 
    def challenge_answer_params
        params.require(:challenge_answer).permit(:face_id, :challenge_id, :game_id)
    end
end
