class AddAdminToPatron < ActiveRecord::Migration[6.0]
  def change
    add_column :patrons, :admin, :boolean, default: false
  end
end
