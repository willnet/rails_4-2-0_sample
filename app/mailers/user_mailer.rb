class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def registration(user)
    @user = user

    mail to: "to@example.org"
  end
end
