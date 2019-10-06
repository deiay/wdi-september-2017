class Reservation < ActiveRecord::Base

  validates :people, :numericality => { :only_integer => true, :greater_than => 0, :less_than => 500 }
  validates :begin_time, presence: true

  belongs_to :restaurant
  belongs_to :user

  def active_at?(time)
    if begin_time <= time && begin_time + duration > time
      true
    else
      false
    end
  end

  def active?
    active_at?(Time.now)
  end

  def self.active_at(time)
    active_array = self.select{|r| r.active_at?(time)}
    return self.where(id: active_array.map(&:id))
  end

  def self.active
    self.active_at(Time.now)
  end

  def duration
    1.hour
  end
end
