class UserMailer < ActionMailer::Base
  default from: "admin@ramyani.com"

def  welcome_email(user)
    @user = user
    email_with_name = "#{@user.full_name} <#{@user.email}>"
    @url  = "http://localhost:3000/users"
    mail(:to => email_with_name, :subject => "Welcome message")
  end

end
