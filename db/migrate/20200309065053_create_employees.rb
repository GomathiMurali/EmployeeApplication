class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :employee_name
      t.integer :age
      t.string :gender
      t.string :desgination

      t.timestamps
    end
  end
end
