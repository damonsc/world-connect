class NotifierMailer < ApplicationMailer
    
     default from: 'worldconnect@purecodedigital.com'
 
  def task_email
      <% User.all.each do |user| %>
    @tasks = params[:tasks]
    @user = params[:user]
    @email = 'damonsc@forfam2u.com'
    @email2 = current_user.email
    @url  = 'http://worldconnect.app/'
    mail(to: @email, subject: 'Task Notification')
    mail(to: @user.contact_email , subject: 'Task Notification')
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
