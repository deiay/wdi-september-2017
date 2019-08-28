class Track < ApplicationRecord

  #default_scope { limit(15).order(:id) }

  SHORT = 180000
  LONG  = 360000

  # bytes, milliseconds are integers
  # unit price is flaot, greater than or equal to 0
  # must be a name, composer, milliseconds, :bytes, unit_price, all exist

  validates :name, :composer, :milliseconds, :bytes, :unit_price, presence: true
  validates :bytes, :milliseconds, numericality: { only_integer: true, greater_than: 0}
  validates :unit_price, numericality: {greater_than: 0}

  validate :name_must_be_titleized

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

#private

  def name_must_be_titleized
    # Step 0: make sure that there's a title
    return unless name.present?

    # Step 1: Check that the first char is not upper case letter
    first_char = name[0]

    first_char_is_not_upcased = (first_char != first_char.upcase)

    # Step 2: if the first char is not uppercase, add error
    if first_char_is_not_upcased
      errors.add(:name, 'name_must_be_capitalized')
    end

  end


end
