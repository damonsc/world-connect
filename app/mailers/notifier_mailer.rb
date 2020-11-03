class NotifierMailer < ApplicationMailer
    
     default from: 'worldconnect@purecodedigital.com'
 
  def task_email

    @tasks = params[:tasks]
    @email = 'damonsc@forfam2u.com'
    @url  = 'http://worldconnect.app/'
    mail(to: @email, subject: 'Welcome to My Awesome Site')
  end


     def task_email2

       @tasks = params[:tasks]
       @email = 'damon@purecodedigital.com'
       @url  = 'http://worldconnect.app/'
       mail(to: @email, subject: 'Welcome to My Awesome Site')
     end

    

    
end
