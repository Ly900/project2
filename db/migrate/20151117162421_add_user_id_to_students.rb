class AddUserIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :user_id, :integer
  end
# It's so great to see you use additional migrations to update your schema rather that directly editing existing migrations which is bad practice.  
end
