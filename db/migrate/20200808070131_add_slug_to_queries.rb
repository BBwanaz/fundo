class AddSlugToQueries < ActiveRecord::Migration[6.0]
  def change
    add_column :queries, :slug, :string
    add_index :queries, :slug, unique: true
  end
end
