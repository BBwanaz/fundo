class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :surname
      t.string :education
      t.text :image

      t.timestamps
    end
  end
end
