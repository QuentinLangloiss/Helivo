class ContactMessagesController < ApplicationController
  def new
    @contact_message = ContactMessage.new
  end

  def create
    @contact_message = ContactMessage.new(contact_message_params)

    if @contact_message.valid?
      ContactMailer.contact_message(@contact_message).deliver
      redirect_to root_path, notice: 'Message sent successfully'
    else
      render :new
    end
  end

  private

  def contact_message_params
    params.require(:contact_message).permit(:name, :email, :message)
  end
end
