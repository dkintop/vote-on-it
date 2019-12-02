class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string :title
      t.string :description
      t.string :type
      t.string :winning

      t.timestamps
    end
  end
end
