class RecievingOrder < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :topic, presence: true, length: { maximum: 30 }
  validates :category, presence: true, length: { maximum: 30 }
  validates :cost_maximum, presence: true, numericality: { in: 1..9999 }
  validates :cost_minimum, presence: true, numericality: { in: 1..9999 }
end