class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORY, message: "%{value} is not included in the list" }
end
