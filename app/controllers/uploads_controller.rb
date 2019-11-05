class UploadsController < ApplicationController


require 'devise_roles'
  def index
  @users = User.all
# @upload = Upload.all
	if current_user.admin == true
    @upload = Upload.all
    else
    @upload = Upload.where(:user_id => current_user.id) 
	
	@upload2 = Upload.where(:reference_code => current_user.content_code)
	end
	
	
	
  end

  def new
  
  #@upload = Upload.new
	   @upload = current_user.uploads.build
	   
  end

  def create
  
   @upload = Upload.new(upload_params)
	  @upload.user = current_user
	 
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
  
  def correct_user
  @upload = current_user.uploads.find_by(id: params[:id])
  redirect_to root_path, notice: "Not the correct User" if @uploads.nil?
  end
  
   private
   
      def upload_params
	 
      params.require(:upload).permit(:name, :attachment, :user_id, :admin_id, :intended_user, :reference_code, :user_submit)
	  
	 
	  end
	  
	  end
	  

   
   
