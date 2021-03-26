class BarCrawlsController < ApplicationController
  before_action :set_bar_crawl, only: [:show, :update, :destroy]

  # GET /bar_crawls
  def index
    @bar_crawls = BarCrawl.all

    render json: @bar_crawls
  end

  # GET /bar_crawls/1
  def show
    render json: @bar_crawl
  end

  # POST /bar_crawls
  def create
    @bar_crawl = BarCrawl.new(bar_crawl_params)

    if @bar_crawl.save
      render json: @bar_crawl, status: :created, location: @bar_crawl
    else
      render json: @bar_crawl.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bar_crawls/1
  def update
    if @bar_crawl.update(bar_crawl_params)
      render json: @bar_crawl
    else
      render json: @bar_crawl.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bar_crawls/1
  def destroy
    @bar_crawl.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bar_crawl
      @bar_crawl = BarCrawl.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bar_crawl_params
      params.require(:bar_crawl).permit(:crawl_id, :bar_id)
    end
end
