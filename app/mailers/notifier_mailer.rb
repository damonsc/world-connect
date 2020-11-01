class NotifierMailer < ApplicationMailer
    
     default from: 'worldconnect.pc.app@gmail.com'
 
  def task_email
      
    @user = User.find_by_id(1)
    @url  = 'http://worldconnect.app/'
    mail(to: @user.contact_email, subject: 'Welcome to My Awesome Site')
  end

    

    
end
