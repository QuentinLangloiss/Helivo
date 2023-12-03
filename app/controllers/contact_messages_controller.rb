class ContactMessagesController < ApplicationController
  def new
    @contact_message = ContactMessage.new
  end

  def create
    @contact_message = ContactMessage.new(contact_message_params)

    if @contact_message.save
      flash[:success] = "Le formulaire a été envoyé avec succès."
      redirect_to request.referrer
    else
      flash[:error] = "Erreur lors de l'envoi du formulaire. Veuillez réessayer."
      render 'new'
    end
  end

  private

  def contact_message_params
    params.require(:contact_message).permit(:name, :first_name, :email, :phone, :budget, :message)
  end
end
