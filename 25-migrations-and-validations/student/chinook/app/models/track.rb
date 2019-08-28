class Track < ApplicationRecord

  #default_scope { limit(15).order(:id) }

  SHORT = 180000
  LONG  = 360000

  scope :short, -> { shorter_than(SHORT) }
  scope :long, -> { longer_than_or_equal_to(LONG)}
  scope :medium, -> { longer_than_or_equal_to(SHORT).shorter_than(LONG)}
  scope :shorter_than, -> (milliseconds) { where('milliseconds < ?', milliseconds) if milliseconds.present? && milliseconds > 0 }
  scope :longer_than_or_equal_to, -> (milliseconds) { where('milliseconds >= ?', milliseconds) if milliseconds.present? && milliseconds > 0 }

  # def self.longer_than_or_equal_to(milliseconds)
  #   where('milliseconds >= ?', milliseconds)
  # end
  #
  # def self.shorter_than(milliseconds)
  #   where('milliseconds < ?', milliseconds)
  # end
  #
  # def self.short
  #   shorter_than(SHORT)
  # end
  #
  # def self.long
  #   longer_than_or_equal_to(LONG)
  # end
  #
  # def self.medium
  #   longer_than_or_equal_to(SHORT).shorter_than(LONG)
  # end

  def self.starts_with(char)
    where('name ILIKE ?',"#{ char }%")
  end



end
