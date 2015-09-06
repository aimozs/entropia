class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy, :selectResource, :removeResource]
  respond_to :html, :xml, :json
  # GET /items
  # GET /items.json

  def selectResource
    if params[:resource]
      @item.resources << Resource.find(params[:resource])
    end
    redirect_to :back
  end

  def removeResource
    if params[:resource]
      @item.resources.delete(params[:resource])
    end
    redirect_to :back
  end

  def index
    @items = Item.all

    if params[:item_id]
      @item = Item.find(params[:item_id])
    else
      @item = Item.last
    end
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end
 
  # GET /items/new
  def new
    @item = Item.new
    @itemTypes = Item.order(:itemType)
    @resources = Resource.all
  end

  # GET /items/1/edit
  def edit
    # @itemTypes = ['Components', 'Weapon', 'Tool']
    @itemTypes = Item.order(:itemType)
    @resources = Resource.all
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)
    @item.resources << :resource_id

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:name, :itemType, :level, :ttValue, :marketValue, :volume, :image)
    end
end
