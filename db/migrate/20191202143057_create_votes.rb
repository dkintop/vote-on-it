class CreateVotes < ActiveRecord::Migration[6.0]
  def change
    create_table :votes do |t|
      t.string :option_choice
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :subject, null: false, foreign_key: true
    end
  end
end
