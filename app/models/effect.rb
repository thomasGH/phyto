class Effect < ActiveRecord::Base
  has_many :effects_herbs, dependent: :destroy
  has_many :herbs, through: :effects_herbs
end
