class HomeController < ApplicationController
  def index
  end
  def contact
    @contact_form = ContactForm.new()
  end
  def how
  end
end