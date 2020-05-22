class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :project_name
      t.string :task_name
      t.string :description
      t.string :estimate_hours
      t.string :employee_name

      t.timestamps
    end
  end
end
