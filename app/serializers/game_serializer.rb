# require 'jsonapi-serializers'

class GameSerializer
    include JSONAPI::Serializer
    attributes :id, :username, :current_challenge_id
    has_many :challenges
    has_many :challenge_answers
    
end
