class TimeEntry < ActiveRecord::Base
  belongs_to :project
  belongs_to :task
  belongs_to :user
  
end