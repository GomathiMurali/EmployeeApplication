json.extract! employee, :id, :employee_name, :email_id, :age, :gender, :desgination, :project_name,:created_at, :updated_at
json.url employee_url(employee, format: :json)
