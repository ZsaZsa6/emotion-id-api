class FacesController < ApplicationController
  
    def create
        
        face = Face.create[(face_params)]
        # render json: face
    end

    private
    def face_params
        params.require(:face).permit(:image_url, :challenge_id )
    end
end
