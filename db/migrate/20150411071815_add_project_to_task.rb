class AddProjectToTask < ActiveRecord::Migration
  def change
    add_reference :tasks, :project, index: true
    add_foreign_key :tasks, :projects
  end
end
