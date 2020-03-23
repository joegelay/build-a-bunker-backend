class Bunker < ApplicationRecord
  has_many :supplies
  belongs_to :user
end
