class Contact < MailForm::Base
  attribute :name, validate: true
  attribute :email, validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message, validate:true
  attribute :nickname,  captcha: true

  def headers
    { 
      to: "andrea.amnaya@gmail.com", # change this to be the email you want sent to
      subject: "Atelier Cité - contato",
      from: %("#{name}" <#{email}>)
    }
  end
end
