# require 'chronic_duration'

class Entry < ActiveRecord::Base

  belongs_to :employee
  belongs_to :project

  attr_accessor :hours, :minutes

  # Run function before validation
  before_validation :update_time

  # Update time to be the sum of hours and minutes
  def update_time
    self.time = self.hours.to_i*3600 + self.minutes.to_i*60
  end

  # Validation
  validates :employee_id, presence: true
  validates :name,
                  length: { minimum: 4 },
                  presence: true
  validates :time,
                  numericality: { greater_than: 0 },
                  presence: true

end
