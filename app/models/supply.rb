class Supply < ApplicationRecord
  has_many :bunkers, through: :bunker_supply
end
