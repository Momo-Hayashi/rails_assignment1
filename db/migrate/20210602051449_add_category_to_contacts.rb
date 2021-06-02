class AddCategoryToContacts < ActiveRecord::Migration[5.2]
  def change
      add_column :contacts, :Name, :string
      add_column :contacts, :Email, :string
      add_column :contacts, :Content, :text
    end
  end
