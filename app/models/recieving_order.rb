class RecievingOrder < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :topic, presence: true, length: { maximum: 30 }
  validates :category, presence: true, length: { maximum: 30 }
  validates :cost_maximum, numericality: { in: 1..9999 }
  validates :cost_minimum, numericality: { in: 1..9999 }
  validates :detail, presence: true, length: { maximum: 350 } 
end