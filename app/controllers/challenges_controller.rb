class ChallengesController < ApplicationController
    def create
        challenge = Challenge.create(challenge_params)
        render json: challenge
    end
    private
    def challenge_params
        params.require(:challenge).permit(:emotion_number, :face_answer_number, :level_id)
    end
end
