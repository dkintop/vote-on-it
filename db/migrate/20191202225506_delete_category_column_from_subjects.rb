class DeleteCategoryColumnFromSubjects < ActiveRecord::Migration[6.0]
  def change
    remove_column :subjects, :category
  end
end
