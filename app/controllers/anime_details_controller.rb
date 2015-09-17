class AnimeDetailsController < ApplicationController
  before_action :set_anime_detail, only: [:show, :edit, :update, :destroy]

  # GET /anime_details
  # GET /anime_details.json
  def index
    @anime_title = AnimeTitle.find(params[:anime_title_id])  # AnimeTitleのインスタンス、idを引き継ぐ
    @anime_details = @anime_title.anime_details  # @anime_title.[今のパス配下のid] のanime_detailsのみを参照する
    render layout: 'applicationmini'
  end

  # GET /anime_details/1
  # GET /anime_details/1.json
  def show
    @anime_title = AnimeTitle.find(params[:anime_title_id])  # AnimeTitleのインスタンス、idを引き継ぐ
    @anime_details = AnimeDetail.all
    render layout: 'applicationmini'
  end

  # GET /anime_details/new
  def new
    @anime_title = AnimeTitle.find(params[:anime_title_id])  # AnimeTitleのインスタンス、idを引き継ぐ
    @anime_detail = AnimeDetail.new
    render layout: 'applicationmini'
  end

  # GET /anime_details/1/edit
  def edit
    @anime_title = AnimeTitle.find(params[:anime_title_id])  # AnimeTitleのインスタンス、idを引き継ぐ
    render layout: 'applicationmini'
  end

  # POST /anime_details
  # POST /anime_details.json
  def create
    @anime_detail = AnimeDetail.new(anime_detail_params)

    respond_to do |format|
      if @anime_detail.save
        format.html { redirect_to controller: :anime_titles, action: :show, id: @anime_detail.anime_title_id, notice: 'Anime detail was successfully created.' }
        format.json { render :show, status: :created, location: @anime_detail }
      else
        format.html { render :new }
        format.json { render json: @anime_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anime_details/1
  # PATCH/PUT /anime_details/1.json
  def update
    respond_to do |format|
      if @anime_detail.update(anime_detail_params)
        format.html { redirect_to action: :show, anime_title_id: @anime_detail.anime_title_id, notice: 'Anime detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @anime_detail }
      else
        format.html { render :edit }
        format.json { render json: @anime_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anime_details/1
  # DELETE /anime_details/1.json
  def destroy
    @anime_detail.destroy
    respond_to do |format|
      format.html { redirect_to action: :index, notice: 'Anime detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anime_detail
      @anime_detail = AnimeDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anime_detail_params
      params.require(:anime_detail).permit(:anime_title_id, :profile, :op_title, :op_artist, :op_movie, :ed_title, :ed_artist, :ed_movie)
    end
end
