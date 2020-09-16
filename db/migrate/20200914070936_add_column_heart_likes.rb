class AddColumnHeartLikes < ActiveRecord::Migration[6.0]
  def change
    add_reference :likes, :heart, polymorphic: true
  end
end



