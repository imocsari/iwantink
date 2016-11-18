class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(email)
    attachments.inline['iwantinklogo.png'] = File.read('app/assets/images/iwantinklogo.png')
    mail to: email, subject: "Thanks for signing up with Iwantink"
  end
end
