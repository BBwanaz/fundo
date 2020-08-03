class AddCreatorToQuery < ActiveRecord::Migration[6.0]
  def change
    add_column :queries, :creator, :integer
  end
end
