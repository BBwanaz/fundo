class RemoveFirstNameFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :first_name, :string
  end
end
