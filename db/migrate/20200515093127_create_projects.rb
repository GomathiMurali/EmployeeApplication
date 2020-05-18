class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.string :client
      t.string :location
      t.integer :team_size
      t.string :start_date
      t.string :end_date
      t.numeric :cost

      t.timestamps
    end
  end
end
