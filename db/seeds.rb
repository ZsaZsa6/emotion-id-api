# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# game1 = Game.create(username: "ronda")
# game2 = Game.create(username: "Nathan")
# game3 = Game.create(username: "Lillian")
games =  Game.create([{username: 'ronda'}, {username: 'Nathan'}, {username: 'Lillian'}])
