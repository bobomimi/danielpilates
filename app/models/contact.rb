class Contact < MailForm::Base
  attributes :name,    :validate => true
  attributes :email,   :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attributes :message, :validate => true


  def headers
  	{
  	  :subject => "contact Form",
  	  :to => "boaz242@gmail.com",
  	  :from => %("#{name}" <#{email}>)
  	}  
  end 
end