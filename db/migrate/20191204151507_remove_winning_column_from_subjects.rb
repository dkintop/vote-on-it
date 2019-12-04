class RemoveWinningColumnFromSubjects < ActiveRecord::Migration[6.0]
  def change
    remove_column :subjects, :winning
  end
end
