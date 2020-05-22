class AddProjectNameToEmployee < ActiveRecord::Migration[5.1]
  def change
      add_column :employees, :project_name,:string
  end
end
