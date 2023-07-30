class CreateTableEmployee < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.timestamps
    end

    create_table :parts do |t|
      t.string :part_number
      t.timestamps
    end

    create_table :inventory_items, id: false do |t|
      t.belongs_to :company
      t.belongs_to :part
    end
  end
end
