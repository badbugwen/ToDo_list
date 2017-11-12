class AddColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :to_dos, :is_public, :boolean
  end
end
