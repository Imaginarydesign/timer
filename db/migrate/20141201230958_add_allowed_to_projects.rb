class AddAllowedToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :allowed, :integer
  end
end
