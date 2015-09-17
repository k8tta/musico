class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.date :birth
      t.string :homepage
      t.string :ctype
      t.binary :photo

      t.timestamps null: false
    end
  end
end
