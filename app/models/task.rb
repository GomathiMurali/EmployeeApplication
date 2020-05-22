class Task < ApplicationRecord
  validates :project_name, presence: true
    validates :task_name, presence: true
  validates :description, presence: true
  validates :estimate_hours, presence: true
  validates :employee_name, presence: true

 def self.search(search)
     if search.blank?  # blank? covers both nil and empty string
       all
     else
       where('task_name LIKE ?', "%#{search}%")
     end
   end
end
