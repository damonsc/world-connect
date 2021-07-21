class StreamQueriesController < ApplicationController
  before_action :set_stream_query, only: %i[ show edit update destroy ]

  # GET /stream_queries or /stream_queries.json
  
rescue_from ActiveRecord::RecordNotFound, with:
:handle_record_not_found
  
  def index
      @stream_codes = StreamCode.all
    @stream_queries = StreamQuery.all
  end

  # GET /stream_queries/1 or /stream_queries/1.json
  def show
      
      @stream_codes = StreamCode.all
    @stream_queries = StreamQuery.all
      
  end

  # GET /stream_queries/new
  def new
    @stream_query = StreamQuery.new
  end

  # GET /stream_queries/1/edit
  def edit
  end
  
  rescue_from ActiveRecord::RecordNotFound do |exception|
      redirect_to stream_queries_path
    end
  

  # POST /stream_queries or /stream_queries.json
  def create
    @stream_query = StreamQuery.new(stream_query_params)

    respond_to do |format|
      if @stream_query.save
        format.html { redirect_to @stream_query, notice: "Stream query was successfully created." }
        format.json { render :show, status: :created, location: @stream_query }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @stream_query.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stream_queries/1 or /stream_queries/1.json
  def update
    respond_to do |format|
      if @stream_query.update(stream_query_params)
        format.html { redirect_to @stream_query, notice: "Stream query was successfully updated." }
        format.json { render :show, status: :ok, location: @stream_query }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @stream_query.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stream_queries/1 or /stream_queries/1.json
  def destroy
    @stream_query.destroy
    respond_to do |format|
      format.html { redirect_to stream_queries_url, notice: "Stream query was successfully destroyed." }
      format.json { head :no_content }
    end
  end



  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stream_query
      @stream_query = StreamQuery.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def stream_query_params
      params.require(:stream_query).permit(:code)
    end
    
    
end

