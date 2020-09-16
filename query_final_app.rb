#################### Feeds #####################
# get public photo
user = User.find(1)
public_photos = user.photos.where(sharing_mode: "public").order(updated_at: :desc)
#get total heart
public_photos.each do |photo|
  puts photo.likes.count
end

#get public album
user = User.find(1)
public_albums = user.albums.where(sharing_mode: "public").order(updated_at: :desc)
#get total heart
public_albums.each do |photo|
  puts photo.likes.count
end
#################### Disovery #####################
photos = Photo.where(sharing_mode: "public").order(updated_at: :desc)
albums = Album.where(sharing_mode: "public").order(updated_at: :desc)

##############Public Profile
###########Tab Photos
# params[:user_id]
user_id = params[:user_id]
user_id = 1
photos = User.find(user_id).photos.where(sharing_mode: "public")
count_public_photos = photos.count
###########Tab Albums
albums = User.find(user_id).albums.where(sharing_mode: "public")
count_public_albums = albums.count
#get total photo on album
albums.each do |album|
  puts album.photos.count
end
###########Tab Followings
following = User.find(user_id).followings
count_following = following.count
###########Tab Followers
followers = User.find(user_id).followers
count_followers = followers.count

############## My Profile #####################
###########Tab Photos
photos = User.find(user_id).photos
count_photos = photos.count
###########Tab Albums
albums = User.find(user_id).albums
count_albums = albums.count
###########Tab Followings
following = User.find(user_id).followings
count_following = following.count
###########Tab Followers
followers = User.find(user_id).followers
count_following = followers.count

############## Admin dedicated features #####################
###########Manage Photos
Photo.all
###########Manage Albums
Album.all
###########Manage Users
User.all
