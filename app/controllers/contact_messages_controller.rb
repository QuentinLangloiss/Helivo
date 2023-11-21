class ContactMessagesController < ApplicationController
  def new
    @contact_message = ContactMessage.new
  end

  def create
    @contact_message = ContactMessage.new(params[:contact_message])
    if @contact_message.valid?
      ContactMailer.contact_message(@contact_message).deliver
      redirect_to root_path, notice: 'Message sent successfully'
    else
      render :new
    end
  end
end
