class AddEmailIdToEmployee < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :email_id,:string
  end
end
