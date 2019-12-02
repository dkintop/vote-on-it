class AddOption2ToSubjects < ActiveRecord::Migration[6.0]
  def change
    add_column :subjects, :option_2, :string
  end
end
