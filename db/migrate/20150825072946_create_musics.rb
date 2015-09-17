class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :genre
      t.string :title
      t.binary :jacket
      t.string :album
      t.string :publish
      t.date :published
      t.string :youtube

      t.timestamps null: false
    end
  end
end
