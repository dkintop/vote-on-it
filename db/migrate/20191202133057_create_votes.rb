class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.string :option_choice
      t.integer :user_id
      t.integer :subject_id

      t.timestamps
    end
  end
end
