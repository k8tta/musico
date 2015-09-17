class MusicsController < ApplicationController
  before_action :set_music, only: [:show, :edit, :update, :destroy]

  # GET /musics
  # GET /musics.json
  def index
    @artist = Artist.find(params[:artist_id])  #Artistのインスタンス変数
    # @musics = Music.all だと全ぶっぱ
    @musics = @artist.musics
  end

  # GET artists/xx/musics/1
  # GET artists/xx/musics/1.json
  # => params = {artist_id:xx, id:1}
  def show
    @artist = Artist.find(params[:artist_id])  #Artistのインスタンス変数
    @music = @artist.musics.find(params[:id])  #Musicのインスタンス変数（大文字にならないことに注意）
  end

  # GET /musics/new
  def new
    @artist = Artist.find(params[:artist_id])  #Artistのインスタンス変数
    @music = Music.new
  end

  # GET /musics/1/edit
  def edit
    @artist = Artist.find(params[:artist_id])  #Artistのインスタンス変数
  end

  # POST /musics
  # POST /musics.json
  def create
    @artist = Artist.find(params[:artist_id])  #Artistのインスタンス変数
    @music = @artist.musics.new(music_params)

    respond_to do |format|
      if @music.save
        format.html { redirect_to action: :index, artist_id: @music.artist_id, notice: 'Music was successfully created.' }
        format.json { render :show, status: :created, location: @music }
      else
        format.html { render :new }
        format.json { render json: @music.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musics/1
  # PATCH/PUT /musics/1.json
  def update
    respond_to do |format|
      if @music.update(music_params)
        format.html { redirect_to action: :show, id: @music.id, artist_id: @music.artist.id, notice: 'Music was successfully updated.' }
        format.json { render :show, status: :ok, location: @music }
      else
        format.html { render :edit }
        format.json { render json: @music.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musics/1
  # DELETE /musics/1.json
  def destroy
    @music.destroy
    respond_to do |format|
      format.html { redirect_to artist_musics_path(@music.artist), notice: 'Music was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_music
      @music = Music.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def music_params
      params.require(:music).permit(:genre, :title, :jacket, :album, :publish, :published, :youtube)
    end
end
