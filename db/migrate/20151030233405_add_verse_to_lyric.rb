class AddVerseToLyric < ActiveRecord::Migration
  def change
    add_column :lyrics, :verse, :text
  end
end
