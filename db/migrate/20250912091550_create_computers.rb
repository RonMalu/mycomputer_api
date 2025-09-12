class CreateComputers < ActiveRecord::Migration[8.0]
  def change
    create_table :computers do |t|
      t.string :size
      t.string :brand
      t.string :model

      t.timestamps
    end
  end
end
