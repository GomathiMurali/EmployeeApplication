json.extract! project, :id, :project_name, :client, :location, :team_size, :start_date, :end_date, :cost, :created_at, :updated_at
json.url project_url(project, format: :json)
