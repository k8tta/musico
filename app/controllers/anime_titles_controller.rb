class AnimeTitlesController < ApplicationController
  before_action :set_anime_title, only: [:show, :edit, :update, :destroy]

  # GET /anime_titles
  # GET /anime_titles.json
  def index
    @anime_titles = AnimeTitle.all   #renderよりも先に書いておく
    render layout: 'applicationsub'
  end

  # GET /anime_titles/1
  # GET /anime_titles/1.json
  def show
    @anime_title = AnimeTitle.find(params[:id])
    @anime_details = @anime_title.anime_details  # @anime_title.[今のパス配下のid] のanime_detailsのみを参照する
    render layout: 'applicationsub'
  end

  # GET /anime_titles/new
  def new
    @anime_title = AnimeTitle.new
    render layout: 'applicationmini'
  end

  # GET /anime_titles/1/edit
  def edit
    render layout: 'applicationmini'
  end

  # POST /anime_titles
  # POST /anime_titles.json
  def create
    @anime_title = AnimeTitle.new(anime_title_params)

    respond_to do |format|
      if @anime_title.save
        format.html { redirect_to @anime_title, notice: 'Anime title was successfully created.' }
        format.json { render :show, status: :created, location: @anime_title }
      else
        format.html { render :new }
        format.json { render json: @anime_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anime_titles/1
  # PATCH/PUT /anime_titles/1.json
  def update
    respond_to do |format|
      if @anime_title.update(anime_title_params)
        format.html { redirect_to @anime_title, notice: 'Anime title was successfully updated.' }
        format.json { render :show, status: :ok, location: @anime_title }
      else
        format.html { render :edit }
        format.json { render json: @anime_title.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anime_titles/1
  # DELETE /anime_titles/1.json
  def destroy
    @anime_title.destroy
    respond_to do |format|
      format.html { redirect_to anime_titles_url, notice: 'Anime title was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anime_title
      @anime_title = AnimeTitle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anime_title_params
      params.require(:anime_title).permit(:title, :icon_url, :icon)
    end
end
