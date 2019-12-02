class AddCategoryIdToSubjects < ActiveRecord::Migration[6.0]
  def change
    add_column :subjects, :category_id, :string
  end
end
