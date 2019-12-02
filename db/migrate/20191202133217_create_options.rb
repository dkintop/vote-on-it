class CreateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :options do |t|
      t.string :description
      t.integer :subject_id

      t.timestamps
    end
  end
end
