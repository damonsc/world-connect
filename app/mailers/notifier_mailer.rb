class NotifierMailer < ApplicationMailer
    
     default from: 'worldconnect@purecodedigital.com'
     
     def task_emailclient
       @tasks = params[:tasks]
       @user = params[:user]
       @email2 = current_user.email
       @url  = 'http://worldconnect.app/'
       mail(to: @user.email, subject: 'Task Notification')
     end
 
  def task_email
    @tasks = params[:tasks]
    @user = params[:user]
    @email = 'damonsc@forfam2u.com'
    @email2 = current_user.email
    @url  = 'http://worldconnect.app/'
    mail(to: @email, subject: 'Task Notification')
  end


     def task_email2

       @tasks = params[:tasks]
       @email = 'darrel@purecodedigital.com'
       @url  = 'http://worldconnect.app/'
       mail(to: @email, subject: 'Task Notification')
     end

    def task_email3

       @tasks = params[:tasks]
       @email = 'cordero@purecodedigital.com'
       @url  = 'http://worldconnect.app/'
       mail(to: @email, subject: 'Task Notification')
     end

    
end
