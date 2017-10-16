class Track < ApplicationRecord

  SHORT = 180000
  LONG  = 360000

  validates :name, :composer, :milliseconds, :bytes, :unit_price, presence: true
  validates :bytes, :milliseconds, numericality: {
                                     only_integer: true,
                                     greater_than: 0
                                   }
  validates :unit_price, numericality: { greater_than_or_equal_to: 0.0 }

  validate :name_must_be_titleized

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

private

  def name_must_be_titleized
    # Step 0: Make sure there is a name
    return unless name.present?

    # Step 1: Check that the first char is an uppercase letter
    first_char = name[0]

    # 'a' != 'a'.upcase  ===> 'a' != 'A'
    first_char_is_not_upcased = (first_char != first_char.upcase)

    # Step 2: If the first char is not uppercase, add an error
    errors.add(:name, 'must be capitalized') if first_char_is_not_upcased
  end

end
