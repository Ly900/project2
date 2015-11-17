class ChangeColumnOrderinStudentTable2 < ActiveRecord::Migration
  def up
    change_column :students, :last_name, :string, after: :first_name
  end
end
