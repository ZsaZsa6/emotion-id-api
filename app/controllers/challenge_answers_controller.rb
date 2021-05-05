class ChallengeAnswersController < ApplicationController

    def create
        challenge_answer = ChallengeAnswer.create(challenge_answer_params)
        # render json: challenge_answer
    end

    private 
    def challenge_answer_params
        params.require(:challenge_answer).permit(:face_id, :challenge_id)
    end
end
