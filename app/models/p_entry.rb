class PEntry < ApplicationRecord
  belongs_to :placing_order
  belongs_to :p_room
end
