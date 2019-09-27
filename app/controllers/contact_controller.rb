class ContactController < ApplicationController
  def index
    @contact = Contact.new
  end

  def create
    contact = Contact.new(contact_params)

    if contact.save
      flash[:success] = 'Gracias por tu mensaje! En breves nos pondremos en contacto.'
    else
      flash[:error] = 'Ups tuvimos un problema guardando tu mensaje, por favor interna mas tarde.'
    end

    redirect_back(fallback_location: root_path)
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
