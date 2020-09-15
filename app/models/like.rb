class Like < ApplicationRecord
  belongs_to :album, optional: true
  belongs_to :user
  belongs_to :photo, optional: true
end
