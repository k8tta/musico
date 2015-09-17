class HomeController < ApplicationController
  # GET '/'
  def index
    @anime_titles = AnimeTitle.all
  end

  # GET '/about'
  def about
    # render layout: 'application2'
  end

  # GET '/about'
  def works
    # render layout: 'application2'
  end
end