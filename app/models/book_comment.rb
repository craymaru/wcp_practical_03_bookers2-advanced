class BookComment < ApplicationRecord
    # ASSOCIATIONS
    belongs_to :user
    belongs_to :book
end
