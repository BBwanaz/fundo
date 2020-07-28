class AddProfileReferenceToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :profile, null: false, foreign_key: true
  end
end
