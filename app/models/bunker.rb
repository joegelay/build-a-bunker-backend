class Bunker < ApplicationRecord
  belongs_to :module
  belongs_to :supply
end
