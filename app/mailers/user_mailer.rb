class UserMailer < ActionMailer::Base
  default from: "yoursanil22@gmail.com"
  
  def registration_confirmation(user)
    @user = user
   # attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail(:to => "#{user.name} <#{user.email}>", :subject => "Registered")
  end
end
