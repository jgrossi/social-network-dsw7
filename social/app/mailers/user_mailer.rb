class UserMailer < ActionMailer::Base
  default :from => "from@example.com"
  
  def welcome_message(user)
    @user = user;
    @url = 'http://localhost:3000/users'
    mail(:to => @user.email, :subject => 'This is a subject!')
  end
  
end
