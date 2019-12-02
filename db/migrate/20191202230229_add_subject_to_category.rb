class AddSubjectToCategory < ActiveRecord::Migration[6.0]
  def change
    add_reference :categories, :subject, foreign_key: true
  end
end
