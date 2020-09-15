# #################### Feeds #####################
# # get public photo
# user = User.find(11)
# public_photos = user.photo.where(sharing_mode: "public").order(updated_at: :desc)
# #get total heart
# public_photos.each do |photo|
#   puts photo.like.count
# end

# #get public album
# user = User.find(1)
# public_albums = user.album.where(sharing_mode: "public").order(updated_at: :desc)
# #get total heart
# public_albums.each do |photo|
#   puts photo.like.count
# end
# #################### Disovery #####################
# photos = Photo.where(sharing_mode: "public").order(updated_at: :desc)
# albums = Album.where(sharing_mode: "public").order(updated_at: :desc)

# ##############Public Profile
# ###########Tab Photos
# user_id = params[:user_id]
# user_id = 11
# User.find(user_id).photos.where(sharing_mode: "public")
# ###########Tab Albums
# User.find(user_id).albums.where(sharing_mode: "public")
# ###########Tab Followings
# User.find(user_id).followers
# ###########Tab Followers
# User.find(user_id).received_follows

# ##############My Profile'
# ###########Tab Photos
# User.find(user_id).photos
# ###########Tab Albums
# User.find(user_id).albums
# ###########Tab Followings
# User.find(user_id).followers
# ###########Tab Followers
# User.find(user_id).received_follows

# ##############Admin dedicated features
# ###########Manage Photos
# Photo.all
# ###########Manage Albums
# Album.all
# ###########Manage Users
# User.all
