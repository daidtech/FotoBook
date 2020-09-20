class UserTest < ApplicationRecord
  after_create do |user|
    # Tell the UserMailer to send a welcome email after save
    WelcomeUserTestJob.perform_later(user)
  end
end
