class AddProjectIdToEntries < ActiveRecord::Migration
  def change
    add_reference :entries, :project, index: true
  end
end
