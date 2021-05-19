class REntry < ApplicationRecord
  belongs_to :recieving_order
  belongs_to :r_room
end
