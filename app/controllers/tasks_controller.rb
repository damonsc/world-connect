class TasksController < ApplicationController
    before_action :set_task, only: [:show, :edit, :update, :destroy]
 before_action :authenticate_user!

  # GET /tasks
  # GET /tasks.json
  def index
      is_member?
if current_user.admin
          @tasks = Task.all
else
      
   if current_user.member 
    @tasks = current_user.tasks.where(:user_id => current_user.id)
   end
          
      end
      
      
  end
  # GET /tasks/1
  # GET /tasks/1.json
  def show
      is_member?
	  
	  correct_user unless current_user.admin
 
  end

  # GET /tasks/new
  def new
   is_member?
    @task = current_user.tasks.build
     
  end

  # GET /tasks/1/edit
  def edit
	  
	  correct_user unless current_user.admin
  end

  # POST /tasks
  # POST /tasks.json
  def create
    
   @tasks = current_user.tasks.build(task_params)
      @tasks.user = current_user
    respond_to do |format|
      if @tasks.save
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
      params.require(:task).permit(:description, :status, :complete, :task_id, :user_id, :note)
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
    
end
