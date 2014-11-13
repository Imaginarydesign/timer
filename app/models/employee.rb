class Employee < ActiveRecord::Base
  has_many :time_entries
  has_many :projects
end
