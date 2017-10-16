class Track < ApplicationRecord

  SHORT = 180000
  LONG  = 360000

  scope :short, -> { shorter_than(SHORT) }
  scope :long, -> { longer_than_or_equal_to(LONG) }
  scope :medium, -> { longer_than_or_equal_to(SHORT).shorter_than(LONG) }
  scope :shorter_than, -> (milliseconds) { where('milliseconds < ?', milliseconds) if milliseconds.present? && milliseconds > 0 }
  scope :longer_than_or_equal_to, -> (milliseconds) { where('milliseconds >= ?', milliseconds) }
  scope :starts_with, -> (char) { where('name ILIKE ?', "#{ char }%") }

  def self.shorter_than_method(milliseconds)
    if milliseconds.present? && milliseconds > 0
      where('milliseconds < ?', milliseconds)
    else
      all
    end
  end

end
