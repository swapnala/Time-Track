class AddStartDateToProject < ActiveRecord::Migration
  def change
    add_column :projects, :startDate, :date
  end
end
