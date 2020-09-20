class WelcomeUserTestJob < ApplicationJob
  def perform(user)
    UserMailer.with(user: user).welcome_email.deliver
  end
end
