class AddMoreFieldsToPatron < ActiveRecord::Migration[6.0]
  def change
    add_column :patrons, :username, :string
    add_column :patrons, :city, :string
    add_column :patrons, :streetname, :string
    add_column :patrons, :phone, :integer
  end
end
