class Cell < ApplicationRecord
  acts_as :product

  has_and_belongs_to_many :monoblocks
  has_and_belongs_to_many :splits

  validates :temperature_range, length: {maximum: 20}
  validates :space, numericality: {only_float: true}, allow_blank: true
  validates :dimensions, length: {maximum: 30}
  validates :net_weight, numericality: true, allow_blank: true
  validates :packed_sizes, length: {maximum: 30}

end
