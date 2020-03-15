json.extract! employee, :id, :employee_name, :age, :gender, :desgination, :created_at, :updated_at
json.url employee_url(employee, format: :json)
