class CreateFanComments < ActiveRecord::Migration
  def change
    create_table :fan_comments do |t|
      t.integer :artist_no
      t.string :name
      t.text :body
      t.boolean :deleted

      t.timestamps null: false
    end
  end
end
