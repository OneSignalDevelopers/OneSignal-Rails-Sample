# frozen_string_literal: true

class UserMailer < ApplicationMailer
  default from: 'from@example.com'
  layout 'mailer'
  def email_verification(user)
    @user = user
    mail(to: '',
         subject: '')
  end

  def email_welcome(user)
    @user = user
    mail(to: '',
         subject: '')
  end
end
