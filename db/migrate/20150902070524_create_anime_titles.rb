class CreateAnimeTitles < ActiveRecord::Migration
  def change
    create_table :anime_titles do |t|
      t.string :title
      t.string :icon_url
      t.binary :icon

      t.timestamps null: false
    end
  end
end
