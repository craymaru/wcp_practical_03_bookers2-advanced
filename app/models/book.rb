class Book < ApplicationRecord
  # Adds: Associations 1(User):N(Book)
  belongs_to :user
  has_many :favorites, dependent: :destroy
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  # Varidation
  validates :title,
            presence: true
  validates :body,
            presence: true,
            length: { minimum: 0, maximum: 200 }
end
