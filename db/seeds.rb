# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'abc@gmail.com',password: 'abcabc')
User.create(email: '123@gmail.com',password: '123123')
Playlist.create(name: 'Hype',user_id: 1)
Playlist.create(name: 'Chill',user_id: 1)
Playlist.create(name: 'HAM',user_id: 1)
Playlist.create(name: 'Chill Tracks',user_id: 2)
