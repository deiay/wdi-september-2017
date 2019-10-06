class Restaurant < ActiveRecord::Base

  validates :name, :opening_hour, :closing_hour, presence: true

  belongs_to :category
  has_many :reservations

  def opening_time_on(time)
    Time.local(time.year,time.month,time.day) + opening_hour.hour
  end

  def open_duration
    if closing_hour < opening_hour
      (closing_hour - opening_hour + 24).hours
    else
      (closing_hour - opening_hour).hours
    end
  end

  def closing_time_on(time)
    opening_time_on(time) + open_duration
  end

  def closing_time
    closing_time_on(Time.now)
  end

  def opening_time
    opening_time_on(Time.now)
  end

  def available_at?(time)
    if ((time >= opening_time_on(time) && time < closing_time_on(time)) || (time >= opening_time_on(time - 1.day) && time < closing_time_on(time - 1.day))) && (available_capacity_at(time) > 0)
      true
    else
      false
    end
  end

  def available?
    available_at?(Time.now)
  end


  def available_capacity_at(time)
    capacity - reservations.active_at(time).sum(:people)
  end

  def available_capacity
    available_capacity_at(Time.now)
  end

  def available_for_booking_at?(time)
    if available_at?(time) && time >= Time.now
      true
    else
      false
    end
  end

  def available_for_booking?
    available_for_booking_at?(Time.now)
  end

private


end
