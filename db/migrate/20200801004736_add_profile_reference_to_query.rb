class AddProfileReferenceToQuery < ActiveRecord::Migration[6.0]
  def change
    add_reference :queries, :profile, null: false, foreign_key: true
  end
end
