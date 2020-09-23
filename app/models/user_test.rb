class UserTest < ApplicationRecord
  after_create :send_mail

  def self.abc
    self.xyz
  end

  def full_name
    return self.first_name = asdasd
  end

  def send_mail
    WelcomeUserTestJob.perform_later(self)
  end
end
