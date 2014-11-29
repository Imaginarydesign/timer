class Project < ActiveRecord::Base
  has_and_belongs_to_many :employee
  has_many :entries

  # def total_time
  #   self.entries.sum(:time)
  # end

  # Validation
  validates :name,
                  length: { minimum: 4 },
                  presence: true
end
