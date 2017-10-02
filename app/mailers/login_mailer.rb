class LoginMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.login_mailer.login_successfully.subject
  #
  def login_successfully (user)
    @user = user

    mail to: @user.email,
    subject: "Login to Travel Blog"
  end
end
