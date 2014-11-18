class Entry < ActiveRecord::Base
  belongs_to :employee
  belongs_to :project

  # Validation
  validates :employee_id, presence: true
  validates :name,
                  length: { minimum: 4 },
                  presence: true
  validates :time,
                  numericality: { greater_than: 0 },
                  presence: true

end
