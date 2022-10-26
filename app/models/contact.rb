class Contact < MailForm::Base
  attribute :name,        validate: true
  attribute :email,       validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,     validate: true
  attribute :nickname,    captcha: true

  def headers
    { 
      to: "info@lansingcompletestreets.org",
      subject: "Website Contact Form",
      from: "info@lansingcompletestreets.org",
      reply_to: %("#{name}" <#{email}>)
    }
  end
end
