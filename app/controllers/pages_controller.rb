class PagesController < ApplicationController
  
  def index
    @contacts = Contact.all
    @contact = Contact.new
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)

    if @contact.save
      puts "succes"
    else
      puts "errors"
    end 
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :phone) 
  end  

end
