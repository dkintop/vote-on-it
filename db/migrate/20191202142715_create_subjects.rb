class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string :title
      t.string :description
      t.string :category
      t.string :winning
    end
  end
end
