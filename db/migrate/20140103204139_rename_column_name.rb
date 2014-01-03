class RenameColumnName < ActiveRecord::Migration
  def change
    rename_column :beverages, :type, :selection
  end
end
