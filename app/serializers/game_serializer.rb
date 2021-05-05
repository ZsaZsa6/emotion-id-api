class GameSerializer
    include JSONAPI::Serializer
    attributes :id, :username
    has_many :levels
    has_many :challenge_answers

end
