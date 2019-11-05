class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit, :update, :destroy]


  # GET /videos
  # GET /videos.json
  def index
    if current_user.admin == true
    @videos = Video.all
	else
	@videos = Video.where(:reference_code => current_user.content_code)
	end
	#@user = User.all
  end

  # GET /videos/1
  # GET /videos/1.json
  def show
  is_admin?
  end

  # GET /videos/new
  def new
   # @video = Video.new
	  is_admin?
   @video = current_user.videos.build
	  
  end

  # GET /videos/1/edit
  def edit
  is_admin?
  end

  # POST /videos
  # POST /videos.json
  def create
    @video = Video.new(video_params)
@video.user = current_user
    respond_to do |format|
      if @video.save
        format.html { redirect_to @video, notice: 'Video was successfully created.' }
        format.json { render :show, status: :created, location: @video }
      else
        format.html { render :new }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videos/1
  # PATCH/PUT /videos/1.json
  def update
    respond_to do |format|
      if @video.update(video_params)
        format.html { redirect_to @video, notice: 'Video was successfully updated.' }
        format.json { render :show, status: :ok, location: @video }
      else
        format.html { render :edit }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @video.destroy
    respond_to do |format|
      format.html { redirect_to videos_url, notice: 'Video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_video
      @video = Video.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_params
      params.require(:video).permit(:name, :url, :description, :user_id, :admin_id, :reference_code)
    end
	
	def is_admin?
      # check if user is a admin
      # if not admin then redirect to where ever you want 
      redirect_to root_path unless current_user.admin? 
    end
	
end
