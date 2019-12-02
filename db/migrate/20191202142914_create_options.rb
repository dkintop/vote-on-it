class CreateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :options do |t|
      t.string :description
      t.belongs_to :subject, null: false, foreign_key: true
    end
  end
end
