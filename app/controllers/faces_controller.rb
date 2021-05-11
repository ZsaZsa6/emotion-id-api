class FacesController < ApplicationController
    # All = []
    def create
        
        face = Face.create[(face_params)]
        # render json: face
    end

    private
    def face_params
        params.require(:face).permit(:image_url, :answer_number, :challenge_id )
    end
end
