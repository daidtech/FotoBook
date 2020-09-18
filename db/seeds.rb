# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

############ User ############
10.times do |i|
  u1 = User.create(email: "daidinh#{i}@gmail.com", password: "123123", first_name: "dai#{i}", last_name: "dinh#{i}")
end

########### Photo ############
u1 = User.first
20.times do |i|
  if i<=10
    Photo.create(title: "photo#{i}", description: "description photo#{i} process of internationalization usually means to abstract all strings and other locale specific bits nd other locale specific bits nd other locale specific bits nd other locale specific bits", sharing_mode: "public", user: u1)
  else
    Photo.create(title: "photo#{i}", description: "description photo#{i} process of internationalization usually means to abstract all strings and other locale specific bits nd other locale specific bits nd other locale specific bits nd other locale specific bits", sharing_mode: "private", user: u1)
  end
end

########### Album ############
20.times do |i|
  if i<=10
    Album.create(title: "Album#{i}", description: "description album#{i} process of internationalization usually means to abstract all strings and other locale process of...", sharing_mode: "public", user: u1)
  else
    Album.create(title: "Album#{i}", description: "description album#{i} process of internationalization usually means to abstract all strings and other locale process of...", sharing_mode: "private", user: u1)
  end
end

########### Like ############
(1..10).each do |i|
  Like.create(user: User.find(i), heart: Photo.find(i))
end
(1..10).each do |i|
  Like.create(user: User.find(i), heart: Album.find(i))
end

########### Follow ############
(1..8).each do |i|
  Follow.create(follower: User.find(i), followed_user: User.find(i+1))
end
(1..7).each do |i|
  Follow.create(follower: User.find(1), followed_user: User.find(i+2))
end
