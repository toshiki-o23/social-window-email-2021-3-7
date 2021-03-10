class InquiryMailer < ApplicationMailer
  def received_email(user)
    @user = user
    mail to: @user.email,
         subject: "【#{@user.name}様の社会の窓についてお知らせがあります】"
  end
end
