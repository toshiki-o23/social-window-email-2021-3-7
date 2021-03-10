class InquiryMailer < ApplicationMailer
  def received_email(user)
    @user = user
    mail to: @user.email,
         subject: "【#{@user.name}様の告白についてお知らせがあります】"
  end
end
