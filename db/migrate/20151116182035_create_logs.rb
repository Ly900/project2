class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.date :date_of_contact
      t.string :mode_of_contact
      t.string :type_of_contact
      t.text :contact_details
      t.references :student, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
