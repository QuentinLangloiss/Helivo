class AddPhoneToContactMessages < ActiveRecord::Migration[7.0]
  def change
    add_column :contact_messages, :phone, :string
  end
end
