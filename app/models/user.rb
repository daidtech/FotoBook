class User < ApplicationRecord
  validate :start_with_a

  scope :is_daidinh, -> email {where("email = ?", email)}

  before_save do |user|
    puts "I'm before_save "+user.first_name
  end

  after_save do |user|
    puts "I'm after_save "+user.first_name
  end

  has_many :albums, dependent: :destroy
  has_many :photos, dependent: :destroy
  has_many :likes, dependent: :destroy

  # Will return an array of follows for the given user instance
  has_many :received_follows, foreign_key: :followed_user_id, class_name: "Follow", dependent: :destroy
  # Will return an array of users who follow the user instance
  has_many :followers, through: :received_follows, source: :follower

  #####################

  # returns an array of follows a user gave to someone else
  has_many :given_follows, foreign_key: :follower_id, class_name: "Follow", dependent: :destroy
  # returns an array of other users who the user has followed
  has_many :followings, through: :given_follows, source: :followed_user


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :first_name, :last_name, presence: true, length: { maximum: 25 }
  validates :email, presence: true, length: { maximum: 255 }
  validates :password, presence: true, length: { maximum: 64 }
  # Avatar (optional): Accepted format: jpeg, png. Maximum size is 2Mb.

  def start_with_a
    unless first_name.nil?
      if first_name[0] == 'a' || first_name[0] == 'b'
        errors.add(:first_name, "not start with a")
      end
    end
  end
end
