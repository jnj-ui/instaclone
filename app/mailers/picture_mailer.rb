class PictureMailer < ApplicationMailer
  def picture_mail(picture)
    @picture = picture
    mail to: User.find_by(id: picture.user_id).email, subject: "新規投稿完了メール"
  end
end
