class PictureMailer < ApplicationMailer
  def picture_mail(picture)
    @picture = picture
    @user = User.find_by(id: @picture.user_id)
    mail to: @user.email, subject: "新規投稿完了メール"
  end
end
