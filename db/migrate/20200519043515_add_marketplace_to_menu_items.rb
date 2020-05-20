class AddMarketplaceToMenuItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :menu_items, :marketplace, null: false, foreign_key: true
  end
end
