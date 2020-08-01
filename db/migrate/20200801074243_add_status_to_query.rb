class AddStatusToQuery < ActiveRecord::Migration[6.0]
  def change
    add_column :queries, :status, :integer, default: 0
  end
end
