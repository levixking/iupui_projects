class Event < ActiveRecord::Base
  validates :name, :start_date, :end_date, presence: true
  validate :end_date_after_start_date

  private
  def end_date_after_start_date  
    if self.end_date < self.start_date
      errors.add(:end_date, "must be on or after the start date")
    end
  end
  
  has_many :meetings
  has_and_belongs_to_many :sponsors
  has_many :subscriptions
  has_many :attendees, through: :subscriptions
  
end
