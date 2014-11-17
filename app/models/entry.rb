class Entry < ActiveRecord::Base
  belongs_to :employee

  # Validation
  validates :employee_id, presence: true
  validates :name,
                  length: { minimum: 4 },
                  presence: true
                  
end
