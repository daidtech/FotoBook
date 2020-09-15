class Admin::PhotosController < ApplicationController
  def index
    @photos = Photo.all
    @photos = @photos.where(...) if params[:search]
    @photos = @photos.order(...) if params[:order]
  end

  def show
  end
end

# class User -> users(posts_count)
#   has_many :posts
# end

# class Post
#   belongs_to :user, counter_cache: true
# end

# users.each do |user|
#   user.posts_count
# end

# class User
#   has_many :authors
#   has_many :reviewed_articles
#   has_many :my_articles, through: :authors, source: :articles
# end

class Author(authors -> updated_at)
  has_many :articles
end

cache data Author -> cache author_id+updated_at

class Article
  belongs_to :user, touch: true, class_name: Author.to_s
end


# class Author < ApplicationRecord
#   has_many :books
#   has_many :paperbacks, through: :books, source: :format, source_type: "Paperback"
# end



# class Book < ApplicationRecord
#   has_one :format, polymorphic: true
# end

# class Hardback < ApplicationRecord
#   belongs_to :book, as: :format
# end

# hardbacks -> book_id

# class Paperback < ApplicationRecord
#   belongs_to :book, as: :format
# end

# class User
#   has_many: photos
# end

# class Photo
#   belongs_to: users
# end

Photo.all.each do |photo|
  photo.user.name
end
