
class Form::Music < Music
  REGISTRABLE_ATTRIBUTES = %i(genre title jacket album publish published youtube)

  has_many :artists, class_name: 'Form::Artist'
end