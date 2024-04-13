# Restaurants have a name, address, category, and can have many reviews.
class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian", "weird food", "normal stuff", "the good stuff"] }
end
