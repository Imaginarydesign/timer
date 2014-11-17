class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :name
      t.string :time
      t.references :employee, index: true

      t.timestamps
    end
  end
end
