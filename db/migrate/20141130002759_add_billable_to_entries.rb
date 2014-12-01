class AddBillableToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :billable, :integer
  end
end
