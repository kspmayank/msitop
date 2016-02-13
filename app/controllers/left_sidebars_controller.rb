class LeftSidebarsController < ApplicationController
  before_action :set_left_sidebar, only: [:show, :edit, :update, :destroy]

  # GET /left_sidebars
  # GET /left_sidebars.json
  def index
    @left_sidebars = LeftSidebar.all
  end

  # GET /left_sidebars/1
  # GET /left_sidebars/1.json
  def show
  end

  # GET /left_sidebars/new
  def new
    @left_sidebar = LeftSidebar.new
  end

  # GET /left_sidebars/1/edit
  def edit
  end

  # POST /left_sidebars
  # POST /left_sidebars.json
  def create
    @left_sidebar = LeftSidebar.new(left_sidebar_params)

    respond_to do |format|
      if @left_sidebar.save
        format.html { redirect_to @left_sidebar, notice: 'Left sidebar was successfully created.' }
        format.json { render :show, status: :created, location: @left_sidebar }
      else
        format.html { render :new }
        format.json { render json: @left_sidebar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /left_sidebars/1
  # PATCH/PUT /left_sidebars/1.json
  def update
    respond_to do |format|
      if @left_sidebar.update(left_sidebar_params)
        format.html { redirect_to @left_sidebar, notice: 'Left sidebar was successfully updated.' }
        format.json { render :show, status: :ok, location: @left_sidebar }
      else
        format.html { render :edit }
        format.json { render json: @left_sidebar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /left_sidebars/1
  # DELETE /left_sidebars/1.json
  def destroy
    @left_sidebar.destroy
    respond_to do |format|
      format.html { redirect_to left_sidebars_url, notice: 'Left sidebar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_left_sidebar
      @left_sidebar = LeftSidebar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def left_sidebar_params
      params.require(:left_sidebar).permit(:content)
    end
end
