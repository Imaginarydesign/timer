class Employee < ActiveRecord::Base
  has_many :projects
  has_many :entries
end
