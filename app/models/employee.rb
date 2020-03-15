class Employee < ApplicationRecord
  validates :employee_name, presence: true
  validates :age, presence: true
  validates :gender, presence: true
  validates :desgination, presence: true
 def self.search(search)
     if search.blank?  # blank? covers both nil and empty string
       all
     else
       where('employee_name LIKE ?', "%#{search}%")
     end
   end

end
