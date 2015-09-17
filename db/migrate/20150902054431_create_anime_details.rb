class CreateAnimeDetails < ActiveRecord::Migration
  def change
    create_table :anime_details do |t|
      t.integer :anime_title_id
      t.text :profile
      t.string :op_title
      t.string :op_artist
      t.text :op_movie
      t.string :ed_title
      t.string :ed_artist
      t.text :ed_movie

      t.timestamps null: false
    end
  end
end
