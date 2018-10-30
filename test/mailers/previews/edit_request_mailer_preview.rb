# Preview all emails at http://localhost:3000/rails/mailers/example_mailer
class EditRequestMailerPreview < ActionMailer::Preview
  def sample_mail_preview
    EditRequestMailer.sample_email(User.first, "Estou com duvida na interpretação desta pasta")
  end
end