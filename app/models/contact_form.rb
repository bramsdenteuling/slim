class ContactForm < MailForm::Base
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  
  
  attribute :name
  attribute :company
  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "slimovation contact formulier",
      :to => "info@slimovation.eu",
      :from => %("#{name}" <#{email}>)
    }
  end
end