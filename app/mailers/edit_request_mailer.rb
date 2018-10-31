class EditRequestMailer < ApplicationMailer
  default from: "from@example.com"

  def sample_email(user, message)
    @user = user
    @message = message
    mail(from: @user.email, to: @user.email, subject: 'Pedido de Edição')
  end
end
