class AddAudiolinkToLyric < ActiveRecord::Migration
  def change
    add_column :lyrics, :audiolink, :text
  end
end
