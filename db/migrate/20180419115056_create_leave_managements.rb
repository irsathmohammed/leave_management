class CreateLeaveManagements < ActiveRecord::Migration[5.1]
  def change
    create_table :leave_managements do |t|
      t.integer :status
      t.boolean :approved
      t.boolean :rejected
      t.integer :available_leave
      t.integer :applied_leaves
      t.datetime :from_date
      t.datetime :to_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
