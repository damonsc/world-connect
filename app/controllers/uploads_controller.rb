class UploadsController < ApplicationController
require 'devise_roles'
  def index
  
# @upload = Upload.all
	  if admin_signed_in?
   @upload = Upload.all
   end
    if user_signed_in?
    @upload = Upload.where(:user_id => current_user.id)
	end
  end

  def new
  #@upload = Upload.new
	   @upload = current_user.uploads.build
  end

  def create
  if admin_signed_in?
  @upload = Upload.new(upload_params)
	  @upload.admin = current_admin
     end 
	 
   if user_signed_in?
   @upload = Upload.new(upload_params)
	  @upload.user = current_user
	  end
        if @upload.save
         redirect_to uploads_path, notice: "The uploads #{@upload.name} has been uploaded."
      else
         render "new"
      end
  end

  

  def destroy
	  @upload = Upload.find(params[:id])

      @upload.destroy
      redirect_to uploads_path, notice:  "The upload #{@upload.name} has been deleted."
  end
  
   private
      def upload_params
      params.require(:upload).permit(:name, :attachment, :user_id)
   end
end
