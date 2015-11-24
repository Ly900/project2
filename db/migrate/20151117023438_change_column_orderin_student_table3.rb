class ChangeColumnOrderinStudentTable3 < ActiveRecord::Migration
  def change
    # interesting this migration exists like 3 times. maybe get rid of 2 of them
    change_column :students, :last_name, :string, :after => :first_name
  end
end
