class Meeting < ActiveRecord::Base
  validates :name, :start_time, :end_time, presence: true
  validate :end_time_after_start_time
  
  private
  def end_time_after_start_time  
    if self.end_time < self.start_time
      errors.add(:end_time, "must be at or after the start time")
    end
  end
  
  belongs_to :location
  belongs_to :event
  
end
