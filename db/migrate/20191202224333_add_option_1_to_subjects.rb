class AddOption1ToSubjects < ActiveRecord::Migration[6.0]
  def change
    add_column :subjects, :option_1, :string
  end
end
