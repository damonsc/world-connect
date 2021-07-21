class LinksController < ApplicationController
  before_action :set_link, only: [:show, :edit, :update, :destroy]

  # GET /links
  # GET /links.json
  def index
     
      if current_user.admin
    @links = Link.all
    else
    @links = Link.where(:content_code_matcher => current_user.content_code)
    end
  end

  # GET /links/1
  # GET /links/1.json
  def show
      is_admin?
  end

  # GET /links/new
  def new
      is_admin?
    @link = Link.new
  end

  # GET /links/1/edit
  def edit
      is_admin?
  end
  
  def clientCodeLinks
      @links = Link.all
  end
  
  # POST /links
  # POST /links.json
  def create
    @link = Link.new(link_params)

    respond_to do |format|
      if @link.save
        format.html { redirect_to @link, notice: 'Link was successfully created.' }
        format.json { render :show, status: :created, location: @link }
      else
        format.html { render :new }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /links/1
  # PATCH/PUT /links/1.json
  def update
    respond_to do |format|
      if @link.update(link_params)
        format.html { redirect_to @link, notice: 'Link was successfully updated.' }
        format.json { render :show, status: :ok, location: @link }
      else
        format.html { render :edit }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /links/1
  # DELETE /links/1.json
  def destroy
    @link.destroy
    respond_to do |format|
      format.html { redirect_to links_url, notice: 'Link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_link
      @link = Link.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def link_params
      params.require(:link).permit(:content_link, :image_link, :content_code_matcher, :location, :title, :client_code_matcher)
    end
    
    def is_admin?
     # check if user is a admin
     # if not admin then redirect to where ever you want
     redirect_to root_path unless current_user.admin?
   end
    
end
