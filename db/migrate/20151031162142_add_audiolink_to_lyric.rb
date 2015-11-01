class AddAudiolinkToLyric < ActiveRecord::Migration
  def change
    add_column :lyrics, :audiolink, :string
  end
end
