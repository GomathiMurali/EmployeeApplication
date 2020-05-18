class Project < ApplicationRecord
  validates :project_name, presence: true
  validates :client, presence: true
  validates :location, presence: true
  validates :team_size, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :location, presence: true
  validates :cost, presence: true
 
end
