class FaceSerializer
    include JSONAPI::Serializer
    attributes :id, :image_url, :answer_number
    
end
