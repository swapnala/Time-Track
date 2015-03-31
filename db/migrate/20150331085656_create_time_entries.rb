class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
      t.references :project, index: true
      t.references :task, index: true
      t.references :user, index: true
      t.integer :hours
      t.date :date

      t.timestamps null: false
    end
    add_foreign_key :time_entries, :projects
    add_foreign_key :time_entries, :tasks
    add_foreign_key :time_entries, :users
  end
end
