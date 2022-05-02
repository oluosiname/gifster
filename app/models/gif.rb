class Gif < ApplicationRecord
  has_one_attached :file
  belongs_to :user

  validate :validate_gif

  private

  def validate_gif
    return unless file.attached?

    errors.add(:file, "is greater than 1MB") if file.byte_size > 1.megabyte
  end
end
