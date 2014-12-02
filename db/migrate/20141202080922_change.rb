class Change < ActiveRecord::Migration
  def change
    change_column :projects, :allowed, :integer, :default => 0, :null => false
  end
end
