class InquiryMailer < ApplicationMailer
  def received_email(user)
    @user = user
    mail to: @user.email,
         subject: "【#{@user.yourname}様から#{@user.name}様に告白がございます】"
  end
end
