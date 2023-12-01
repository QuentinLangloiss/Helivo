class ContactMessagesController < ApplicationController
  def new
    @contact_message = ContactMessage.new
  end

  def create
    @contact_message = ContactMessage.new(contact_message_params)

    if @contact_message.save
      begin
        ContactMailer.contact_message(@contact_message).deliver
        redirect_to root_path, notice: 'Message sent successfully'
      rescue StandardError => e
        # Gérer l'erreur d'envoi de courrier électronique ici
        flash[:alert] = 'Error sending email. Please try again later.'
        redirect_to new_contact_path
      end
    else
      render :new
    end
  end

  private

  def contact_message_params
    params.require(:contact_message).permit(:name, :first_name, :email, :phone, :budget, :message)
  end
end
