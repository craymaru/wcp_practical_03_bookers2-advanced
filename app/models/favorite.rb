class Favorite < ApplicationRecord
  # ASSOCIATIONS
  belongs_to :user
  belongs_to :post_image
end
