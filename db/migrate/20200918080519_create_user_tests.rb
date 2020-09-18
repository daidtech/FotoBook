class CreateUserTests < ActiveRecord::Migration[6.0]
  def change
    create_table :user_tests do |t|
      t.string :name
      t.string :email
      t.string :login

      t.timestamps
    end
  end
end
