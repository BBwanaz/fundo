class AddSubjectReferencesToQuery < ActiveRecord::Migration[6.0]
  def change
    add_reference :queries, :subject, null: false, foreign_key: true
  end
end
