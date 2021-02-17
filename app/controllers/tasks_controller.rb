class TasksController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destroy]
 before_action :authenticate_user!

  # GET /tasks
  # GET /tasks.json
  def index
      is_member?
     
          @tasks = Task.all
     
  end
  # GET /tasks/1
  # GET /tasks/1.json
  def show
      is_member?
	  
	  correct_user unless current_user.admin
 
  end
	
	
	def status
		@tasks = Task.all
	end
    
    def client_task
		 @tasks = Task.all
	end

  # GET /tasks/new
  def new
   
    @task = current_user.tasks.build
     
  end

  # GET /tasks/1/edit
  def edit
	  
	  correct_user unless current_user.member
  end

	def completed
		if current_user.member  && current_user.exec
    @tasks = current_user.tasks.where(:user_id => current_user.id)
		end
		
	
			
			if current_user.member && current_user.admin
    @tasks = Task.all
			end
		
		if current_user.member == false
			 @tasks = current_user.tasks.where(:user_id => current_user.id)
		end
   
		
	end
	
	
  # POST /tasks
  # POST /tasks.json
  def create
    
   @tasks = current_user.tasks.build(task_params)
      @tasks.user = current_user
    respond_to do |format|
      if @tasks.save
        if @tasks.code == 100
           NotifierMailer.with(task: @tasks).task_email.deliver_now
           NotifierMailer.with(task: @tasks).task_emailclient.deliver_now
              end
          if @tasks.code == 121767
              NotifierMailer.with(task: @tasks).task_email.deliver_now
           NotifierMailer.with(task: @tasks).task_email2.deliver_now
              end
           if @tasks.code == 121787
               NotifierMailer.with(task: @tasks).task_email.deliver_now
           NotifierMailer.with(task: @tasks).task_email3.deliver_now
              end
        format.html { redirect_to @tasks, notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:description, :status, :complete, :task_id, :user_id, :note, :code, :client_code, :client_submit)
    end
    
    	def correct_user
  @tasks = current_user.tasks.find_by(id: params[:id])
  redirect_to root_path, notice: "Not the correct User" if @tasks.nil?
  end
  
   def is_admin?
      # check if user is a admin
      # if not admin then redirect to where ever you want 
      redirect_to root_path unless current_user.admin? 
    end
    
      def is_member?
      # check if user is a admin
      # if not admin then redirect to where ever you want 
      redirect_to root_path unless current_user.member? 
    end
    
	def correct_user
  @updates = current_user.tasks.find_by(id: params[:id])
  redirect_to root_path, notice: "" if @updates.nil?
  end
    
    def current_user
      return unless session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

    
	
end
