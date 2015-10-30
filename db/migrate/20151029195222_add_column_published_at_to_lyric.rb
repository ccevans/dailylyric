class AddColumnPublishedAtToLyric < ActiveRecord::Migration
  def change
    add_column :lyrics, :published_at, :datetime
  end
end
