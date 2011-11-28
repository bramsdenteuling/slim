class ContactController < ApplicationController  
  def create 
    @contact_form = ContactForm.new(params[:contact_form])
    if @contact_form.deliver
      redirect_to "#", :notice => "Uw bericht is verstuurd. U hoort zo snel mogelijk iets van ons."
    else
      render "home/contact"
    end
  end

end
