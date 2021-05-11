class ChallengesController < ApplicationController
    def create
        challenge = Challenge.create(challenge_params)
        render json: challenge
    end
    def index
        challenges = Challenge.all
        render json: challenges,
        include: [:faces]
    end
    def show
        challenge = Challenge.find(params[:id])
        render json: challenge,
        include: [:faces]
    end
    private
    def challenge_params
        params.require(:challenge).permit(:emotion_name, :correct_answer_number, :challenge_number, :level_number)
    end
end
