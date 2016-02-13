class SecondaryMenusController < ApplicationController
  before_action :set_secondary_menu, only: [:show, :edit, :update, :destroy]

  # GET /secondary_menus
  # GET /secondary_menus.json
  def index
    @secondary_menus = SecondaryMenu.all
  end

  # GET /secondary_menus/1
  # GET /secondary_menus/1.json
  def show
  end

  # GET /secondary_menus/new
  def new
    @secondary_menu = SecondaryMenu.new
  end

  # GET /secondary_menus/1/edit
  def edit
  end

  # POST /secondary_menus
  # POST /secondary_menus.json
  def create
    @secondary_menu = SecondaryMenu.new(secondary_menu_params)

    respond_to do |format|
      if @secondary_menu.save
        format.html { redirect_to @secondary_menu, notice: 'Secondary menu was successfully created.' }
        format.json { render :show, status: :created, location: @secondary_menu }
      else
        format.html { render :new }
        format.json { render json: @secondary_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /secondary_menus/1
  # PATCH/PUT /secondary_menus/1.json
  def update
    respond_to do |format|
      if @secondary_menu.update(secondary_menu_params)
        format.html { redirect_to @secondary_menu, notice: 'Secondary menu was successfully updated.' }
        format.json { render :show, status: :ok, location: @secondary_menu }
      else
        format.html { render :edit }
        format.json { render json: @secondary_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secondary_menus/1
  # DELETE /secondary_menus/1.json
  def destroy
    @secondary_menu.destroy
    respond_to do |format|
      format.html { redirect_to secondary_menus_url, notice: 'Secondary menu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_secondary_menu
      @secondary_menu = SecondaryMenu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def secondary_menu_params
      params.require(:secondary_menu).permit(:name, :link, :order)
    end
end
