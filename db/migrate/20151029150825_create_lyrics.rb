class CreateLyrics < ActiveRecord::Migration
  def change
    create_table :lyrics do |t|
      t.string :title
      t.string :artist
      t.string :song
      t.string :link
      t.integer :user_id

      t.timestamps
    end
  end
end
