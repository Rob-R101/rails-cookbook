class Bookmark < ApplicationRecord
  belongs_to :category
  belongs_to :recipe
  has_one_attached :photo

  validates :recipe_id, uniqueness: {scope: :category_id }
  validates :comment, length: {minimum: 6, too_short: "Must have at least 6 characters"}
end
