class ChangeDataTypeForTime < ActiveRecord::Migration
  def change
    change_column :entries, :time, 'integer USING CAST(time AS integer)'
  end
end
