class CreateMarketplaces < ActiveRecord::Migration[6.0]
  def change
    create_table :marketplaces do |t|
      t.references :patron, null: false, foreign_key: true

      t.timestamps
    end
  end
end
