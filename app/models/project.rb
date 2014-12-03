class Project < ActiveRecord::Base
  has_many :employees
  has_many :entries, :dependent => :destroy

  # Validation
  validates :name,
                  length: { minimum: 4 }
  validates :allowed,
                  presence: true, numericality: { greater_than: 0 }
end
