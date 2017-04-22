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
Song.create(title: 'Ya Don\'t Quit', duration: 266, year: 2012, artist: 'Ice-T', genre: 'Hip-hop')
Song.create(title: 'The Symphony', duration: 365, year: 1988, artist: 'Marley Marl', genre: 'Hip-hop')
Song.create(title: 'N.Y. State of Mind', duration: 294, year: 1983, artist: 'Nas', genre: 'Hip-hop')
Song.create(title: 'B.O.B', duration: 266, year: 2000, artist: 'Outkast', genre: 'Hip-hop')
Song.create(title: 'Move', duration: 190, year: 2008, artist: 'Q-Tip', genre: 'Hip-hop')
Song.create(title: 'GZA', duration: 225, year: 2002, artist: 'Fame', genre: 'Hip-hop')
Song.create(title: 'How High', duration: 245, year: 1995, artist: 'Method Man & Redman', genre: 'Hip-hop')
Song.create(title: 'Pack The Pipe', duration: 315, year: 1992, artist: 'The Pharcyde', genre: 'Hip-hop')
Song.create(title: 'Superhigh', duration: 236, year: 2010, artist: 'Rick Ross feat. Curren$y and Wiz Khalifa', genre: 'Hip-hop')
Profile.create(first_name: 'Anderson',last_name: '.Paak',dob: Date.parse("08/02/1986"),avatar: 'http://static.djbooth.net/pics-features/rect/anderson-paak-2016-year-of.jpg',bio: 'Just an ordinary musical genuis',user_id: 1)
Profile.create(first_name: 'Eddie',last_name: 'Huang',dob: Date.parse("01/03/1985"),avatar: 'https://addicted2success.com/wp-content/uploads/2012/10/eddie-huang-entrepreneur1.jpeg',bio: 'Foodie, human panda and the OG chinkstronaut ',user_id: 2)
