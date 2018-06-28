class ContactsController < ApplicationController
  def create
    @contact = Contact.create(contact_params)

    if @contact.save
      flash[:success] = "Созданно!"
      redirect_to pages_path
    else
      puts "errors"
    end 
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :phone) 
  end  

end
