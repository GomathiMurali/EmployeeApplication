json.extract! task, :id, :project_name, :task_name, :description, :estimate_hours, :employee_name, :created_at, :updated_at
json.url task_url(task, format: :json)
