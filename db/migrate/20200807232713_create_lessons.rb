class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.references :subject, null: false, foreign_key: true
      t.integer :paper
      t.string :level
      t.integer :year
      t.string :session
      t.string :board
      t.text :description
      t.text :video

      t.timestamps
    end
  end
end
