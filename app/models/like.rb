class Like < ApplicationRecord
  belongs_to :heart, polymorphic: true
  belongs_to :user
end
