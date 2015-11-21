class AddCuratorToLyric < ActiveRecord::Migration
  def change
    add_column :lyrics, :curator, :string
  end
end
