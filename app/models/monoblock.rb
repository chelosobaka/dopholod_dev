class Monoblock < ApplicationRecord
  acts_as :product

  has_and_belongs_to_many :cells

  validates :refrigerant, length: {maximum: 20}
  validates :temperature_condition, length: {maximum: 20}
  validates :voltage, length: {maximum: 20}
  validates :power_usage, numericality: {only_float: true}, allow_blank: true
  validates :dimensions, length: {maximum: 30}
  validates :net_weight, numericality: true, allow_blank: true
  validates :packed_sizes, length: {maximum: 30}

end
