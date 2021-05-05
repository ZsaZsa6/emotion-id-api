class ChallengeSerializer
    include JSONAPI::Serializer
    attributes :id, :correct_answer_number, :emotion_name, :challenge_number, :level_number
    has_many :faces
end 
