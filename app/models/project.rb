class Project < ActiveRecord::Base
  has_many :employees
  has_many :entries

  # Validation
  validates :name,
                  length: { minimum: 4 }
  validates :allowed,
                  presence: true, numericality: { greater_than: 0 }
end
