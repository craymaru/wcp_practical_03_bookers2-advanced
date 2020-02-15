class BookComment < ApplicationRecord
  # ASSOCIATIONS
  belongs_to :user
  belongs_to :book

  # VARIDATIONS
  validates :comment,
            presence: true,
            length: { minimum: 0, maximum: 200 }
end
