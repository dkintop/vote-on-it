class RemoveSubjectIdColumnFromCategories < ActiveRecord::Migration[6.0]
  def change
    remove_column :categories, :subject_id
  end
end
