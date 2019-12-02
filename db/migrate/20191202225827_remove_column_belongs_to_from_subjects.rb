class RemoveColumnBelongsToFromSubjects < ActiveRecord::Migration[6.0]
  def change
    remove_column :subjects, :belongs_to
  end
end
