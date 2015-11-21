class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
  
      flash.now[:error] = nil
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
      redirect_to(:back)
    else
      flash.now[:error] = 'Cannot send message.'
      redirect_to 'new'
    end
  end
end