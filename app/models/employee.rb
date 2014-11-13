class Employee < ActiveRecord::Base
  has_many :timeentries
end
