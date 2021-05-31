class UserRoom < ApplicationRecord
  belongs_to :order
  belongs_to :room
end
