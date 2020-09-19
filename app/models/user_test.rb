class UserTest < ApplicationRecord
  after_create do |user|
    # Tell the UserMailer to send a welcome email after save
    UserMailer.with(user: user).welcome_email.deliver_later
  end
end
