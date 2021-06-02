class RemoveColumnsInContacts < ActiveRecord::Migration[5.2]
  def change
    remove_column :contacts, :created_at, :null
    remove_column :contacts, :updated_at, :null
  end
end
