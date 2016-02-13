class PrimaryMenusController < ApplicationController
  before_action :set_primary_menu, only: [:show, :edit, :update, :destroy]

  # GET /primary_menus
  # GET /primary_menus.json
  def index
    @primary_menus = PrimaryMenu.all
  end

  # GET /primary_menus/1
  # GET /primary_menus/1.json
  def show
  end

  # GET /primary_menus/new
  def new
    @primary_menu = PrimaryMenu.new
  end

  # GET /primary_menus/1/edit
  def edit
  end

  # POST /primary_menus
  # POST /primary_menus.json
  def create
    @primary_menu = PrimaryMenu.new(primary_menu_params)

    respond_to do |format|
      if @primary_menu.save
        format.html { redirect_to @primary_menu, notice: 'Primary menu was successfully created.' }
        format.json { render :show, status: :created, location: @primary_menu }
      else
        format.html { render :new }
        format.json { render json: @primary_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /primary_menus/1
  # PATCH/PUT /primary_menus/1.json
  def update
    respond_to do |format|
      if @primary_menu.update(primary_menu_params)
        format.html { redirect_to @primary_menu, notice: 'Primary menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @primary_menu }
      else
        format.html { render :edit }
        format.json { render json: @primary_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /primary_menus/1
  # DELETE /primary_menus/1.json
  def destroy
    @primary_menu.destroy
    respond_to do |format|
      format.html { redirect_to primary_menus_url, notice: 'Primary menu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_primary_menu
      @primary_menu = PrimaryMenu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def primary_menu_params
      params.require(:primary_menu).permit(:name, :link, :order)
    end
end
