class RenameAction < ActiveRecord::Migration[5.1]
  def change
    rename_column :to_dos, :item, :name
  end
end
