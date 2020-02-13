class Book < ApplicationRecord
  # ASSOCIATIONS
  belongs_to :user
  has_many :book_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  # FAVORITED METHOD
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  # VARIDATIONS
  validates :title,
            presence: true
  validates :body,
            presence: true,
            length: { minimum: 0, maximum: 200 }
end
