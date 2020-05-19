class CreateMenuItems < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_items do |t|
      t.string :name, limit: 25
      t.decimal :price, precision: 2, scale: 2

      t.timestamps
    end
  end
end
