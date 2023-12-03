class AddBudgetToContactMessages < ActiveRecord::Migration[7.0]
  def change
    add_column :contact_messages, :budget, :string
  end
end
