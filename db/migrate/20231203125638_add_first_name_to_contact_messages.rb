class AddFirstNameToContactMessages < ActiveRecord::Migration[7.0]
  def change
    add_column :contact_messages, :first_name, :string
  end
end
