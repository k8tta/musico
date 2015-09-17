
class Form::Artist < Artist
  REGISTRABLE_ATTRIBUTES = %i(name birth homepage ctype photo)

  def selectable_artists
    Artist.all
  end
end