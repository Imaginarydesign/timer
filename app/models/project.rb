class Project < ActiveRecord::Base
  has_and_belongs_to_many :employee
  has_many :entries
end
