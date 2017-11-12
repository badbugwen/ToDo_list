class Rename2Column < ActiveRecord::Migration[5.1]
  def change
    rename_column :to_dos, :date, :due_date
    rename_column :to_dos, :is_public, :is_done 
  end
end
