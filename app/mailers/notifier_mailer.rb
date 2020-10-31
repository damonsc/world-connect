class NotifierMailer < ApplicationMailer
    
     default from: 'notify@worldconnect.app'
 
  def task_email
    @user = params[:user]
    @url  = 'http://worldconnect.app/'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
    
end
