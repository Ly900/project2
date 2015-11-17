class ChangeColumnOrderinStudentTable < ActiveRecord::Migration
  def change
    change_column :students, :last_name, :string, after: :first_name
  end
end
