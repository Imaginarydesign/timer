class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
      t.string :name
      t.integer :employee_id
      t.integer :project_id

      t.timestamps
    end
  end
end
