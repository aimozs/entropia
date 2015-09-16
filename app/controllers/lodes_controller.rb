class LodesController < ApplicationController
  before_action :set_lode, only: [:show, :edit, :update, :destroy]

  # GET /lodes
  # GET /lodes.json
  def index
    @lodes = Lode.all
  end

  # GET /lodes/1
  # GET /lodes/1.json
  def show
  end

  # GET /lodes/new
  def new
    @lode = Lode.new
    if params[:resource]
      @lode.resource = params[:resource]
    end
  end

  # GET /lodes/1/edit
  def edit
  end

  # POST /lodes
  # POST /lodes.json
  def create
    @lode = Lode.new(lode_params)

    respond_to do |format|
      if @lode.save
        format.html { redirect_to @lode, notice: 'Lode was successfully created.' }
        format.json { render :show, status: :created, location: @lode }
      else
        format.html { render :new }
        format.json { render json: @lode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lodes/1
  # PATCH/PUT /lodes/1.json
  def update
    respond_to do |format|
      if @lode.update(lode_params)
        format.html { redirect_to @lode, notice: 'Lode was successfully updated.' }
        format.json { render :show, status: :ok, location: @lode }
      else
        format.html { render :edit }
        format.json { render json: @lode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lodes/1
  # DELETE /lodes/1.json
  def destroy
    @lode.destroy
    respond_to do |format|
      format.html { redirect_to lodes_url, notice: 'Lode was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lode
      @lode = Lode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lode_params
      params.require(:lode).permit(:latitude, :longitude, :size, :resource)
    end
end
