class ChallengeAnswerSerializer
    include JSONAPI::Serializer
    attributes :id
    belongs_to :challenge
    belongs_to :face
end