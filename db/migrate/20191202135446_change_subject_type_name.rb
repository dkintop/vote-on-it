class ChangeSubjectTypeName < ActiveRecord::Migration[6.0]
  def change
    rename_column :subjects, :type, :category
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
