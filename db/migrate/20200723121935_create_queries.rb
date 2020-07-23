class CreateQueries < ActiveRecord::Migration[6.0]
  def change
    create_table :queries do |t|
      t.integer :paper
      t.string :level
      t.integer :year
      t.string :session
      t.string :board
      t.text :description
      t.text :image

      t.timestamps
    end
  end
end
