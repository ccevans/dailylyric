class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.string :name
      t.belongs_to :lyric, index: true

      t.timestamps
    end
  end
end
