class LatestNewsController < ApplicationController
  before_action :set_latest_news, only: [:show, :edit, :update, :destroy]

  # GET /latest_news
  # GET /latest_news.json
  def index
    @latest_news = LatestNews.all
  end

  # GET /latest_news/1
  # GET /latest_news/1.json
  def show
  end

  # GET /latest_news/new
  def new
    @latest_news = LatestNews.new
  end

  # GET /latest_news/1/edit
  def edit
  end

  # POST /latest_news
  # POST /latest_news.json
  def create
    @latest_news = LatestNews.new(latest_news_params)

    respond_to do |format|
      if @latest_news.save
        format.html { redirect_to @latest_news, notice: 'Latest news was successfully created.' }
        format.json { render :show, status: :created, location: @latest_news }
      else
        format.html { render :new }
        format.json { render json: @latest_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /latest_news/1
  # PATCH/PUT /latest_news/1.json
  def update
    respond_to do |format|
      if @latest_news.update(latest_news_params)
        format.html { redirect_to @latest_news, notice: 'Latest news was successfully updated.' }
        format.json { render :show, status: :ok, location: @latest_news }
      else
        format.html { render :edit }
        format.json { render json: @latest_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /latest_news/1
  # DELETE /latest_news/1.json
  def destroy
    @latest_news.destroy
    respond_to do |format|
      format.html { redirect_to latest_news_index_url, notice: 'Latest news was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_latest_news
      @latest_news = LatestNews.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def latest_news_params
      params.require(:latest_news).permit(:content)
    end
end
