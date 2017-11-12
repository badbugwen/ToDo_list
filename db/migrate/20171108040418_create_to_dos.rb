class CreateToDos < ActiveRecord::Migration[5.1]
  def change
    create_table :to_dos do |t|
      t.string :item
      t.date :date
      t.text :note
      t.timestamps
    end
  end
end
