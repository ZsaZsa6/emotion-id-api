# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

games = Game.create([{username: 'Ronda', current_challenge_id: 1}, {username: 'ZsaZsa', current_challenge_id: 1}, {username: 'Lillian', current_challenge_id: 1}])
challenges = Challenge.create([{emotion_name: 'Sad', correct_answer_number: 3, challenge_number: 1, level_number: 1}, {emotion_name: 'Happy', correct_answer_number: 2, challenge_number: 2, level_number: 1}])
happy_faces = Face.create([{image_url: "https://res.cloudinary.com/zsazsa6/image/upload/v1618353439/EmotionID%20pics/Happy/pexels-anna-shvets-3845492_bynbxs.jpg", answer_number: 1, challenge_id: 1}, {image_url: "https://res.cloudinary.com/zsazsa6/image/upload/v1618353437/EmotionID%20pics/Happy/pexels-kelvin-octa-1096147_sqlgnj.jpg", answer_number: 1, challenge_id: 2}])
scared_faces = Face.create([{image_url: "https://res.cloudinary.com/zsazsa6/image/upload/v1618354383/EmotionID%20pics/Scared/pexels-tatiana-syrikova-3933087_b7s4n8.jpg", answer_number: 1, challenge_id: 2}])
sad_faces = Face.create([{image_url: "https://res.cloudinary.com/zsazsa6/image/upload/v1618353592/EmotionID%20pics/Sad/pexels-v%C3%AD%C3%A7k%C3%BD-%C3%B0e%C3%A7%C3%AB%C3%B1t-%C3%9F%C3%B6%C3%BD-1339417_tt01ym.jpg", answer_number: 1, challenge_id: 1}])
surprised_faces = Face.create([{image_url: "https://res.cloudinary.com/zsazsa6/image/upload/v1618353651/EmotionID%20pics/Surprised/pexels-cottonbro-4715322_nqzlsx.jpg", answer_number: 1, challenge_id: 1}])
ChallengeAnswer.create(face_id: 3, challenge_id: 1)



