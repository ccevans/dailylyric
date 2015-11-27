class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :signup,    :validate => true 
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Daily Lyric Email",
      :to => ["cc@ccevans.com"],
      :from => %("#{name}" <#{email}>)
    }
  end

  WEEKLY = %w[Daily Weekly]

end