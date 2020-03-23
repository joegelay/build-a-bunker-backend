class Bunker < ApplicationRecord
  has_many :supplies, through: :bunker_supply
  belongs_to :user
end
